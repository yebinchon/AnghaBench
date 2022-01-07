
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* len; int ** buf; } ;
typedef TYPE_1__ PayloadContext ;
typedef int AVStream ;


 int AVERROR_INVALIDDATA ;
 unsigned int AV_RB16 (int const*) ;
 unsigned int FFMIN (unsigned int,int) ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static int qdm2_parse_subpacket(PayloadContext *qdm, AVStream *st,
                                const uint8_t *buf, const uint8_t *end)
{
    const uint8_t *p = buf;
    unsigned int id, len, type, to_copy;


    id = *p++;
    type = *p++;
    if (type & 0x80) {
        len = AV_RB16(p);
        p += 2;
        type &= 0x7F;
    } else
        len = *p++;

    if (end - p < len + (type == 0x7F) || id >= 0x80)
        return AVERROR_INVALIDDATA;
    if (type == 0x7F)
        type |= *p++ << 8;


    to_copy = FFMIN(len + (p - &buf[1]), 0x800 - qdm->len[id]);
    memcpy(&qdm->buf[id][qdm->len[id]], buf + 1, to_copy);
    qdm->len[id] += to_copy;

    return p + len - buf;
}
