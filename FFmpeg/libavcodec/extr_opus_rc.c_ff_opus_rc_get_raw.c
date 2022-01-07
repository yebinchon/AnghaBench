
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int cachelen; int cacheval; int* position; scalar_t__ bytes; } ;
struct TYPE_5__ {int total_bits; TYPE_1__ rb; } ;
typedef TYPE_2__ OpusRangeCoder ;


 int av_mod_uintp2 (int,int) ;

uint32_t ff_opus_rc_get_raw(OpusRangeCoder *rc, uint32_t count)
{
    uint32_t value = 0;

    while (rc->rb.bytes && rc->rb.cachelen < count) {
        rc->rb.cacheval |= *--rc->rb.position << rc->rb.cachelen;
        rc->rb.cachelen += 8;
        rc->rb.bytes--;
    }

    value = av_mod_uintp2(rc->rb.cacheval, count);
    rc->rb.cacheval >>= count;
    rc->rb.cachelen -= count;
    rc->total_bits += count;

    return value;
}
