
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int range; int code1; int code; } ;
typedef TYPE_1__ RangeCoder ;
typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int TOP ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;

__attribute__((used)) static int decode0(GetByteContext *gb, RangeCoder *rc, uint32_t cumFreq, uint32_t freq, uint32_t total_freq)
{
    uint32_t t;

    if (total_freq == 0)
        return AVERROR_INVALIDDATA;

    t = rc->range * (uint64_t)cumFreq / total_freq;

    rc->code1 += t + 1;
    rc->range = rc->range * (uint64_t)(freq + cumFreq) / total_freq - (t + 1);

    while (rc->range < TOP && bytestream2_get_bytes_left(gb) > 0) {
        uint32_t byte = bytestream2_get_byteu(gb);
        rc->code = (rc->code << 8) | byte;
        rc->code1 <<= 8;
        rc->range <<= 8;
    }

    return 0;
}
