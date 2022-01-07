
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int range; int value; } ;
typedef TYPE_1__ OpusRangeCoder ;


 int opus_rc_dec_normalize (TYPE_1__*) ;

uint32_t ff_opus_rc_dec_log(OpusRangeCoder *rc, uint32_t bits)
{
    uint32_t k, scale;
    scale = rc->range >> bits;

    if (rc->value >= scale) {
        rc->value -= scale;
        rc->range -= scale;
        k = 0;
    } else {
        rc->range = scale;
        k = 1;
    }
    opus_rc_dec_normalize(rc);
    return k;
}
