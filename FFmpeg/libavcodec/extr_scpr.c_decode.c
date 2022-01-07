
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int code; int range; } ;
typedef TYPE_1__ RangeCoder ;
typedef int GetByteContext ;


 int TOP ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;

__attribute__((used)) static int decode(GetByteContext *gb, RangeCoder *rc, uint32_t cumFreq, uint32_t freq, uint32_t total_freq)
{
    rc->code -= cumFreq * rc->range;
    rc->range *= freq;

    while (rc->range < TOP && bytestream2_get_bytes_left(gb) > 0) {
        uint32_t byte = bytestream2_get_byteu(gb);
        rc->code = (rc->code << 8) | byte;
        rc->range <<= 8;
    }

    return 0;
}
