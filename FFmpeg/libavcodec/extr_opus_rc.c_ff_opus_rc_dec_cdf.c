
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint32_t ;
typedef unsigned int uint16_t ;
struct TYPE_4__ {unsigned int range; unsigned int value; } ;
typedef TYPE_1__ OpusRangeCoder ;


 unsigned int FFMIN (unsigned int,unsigned int) ;
 int opus_rc_dec_update (TYPE_1__*,unsigned int,unsigned int,unsigned int,unsigned int) ;

uint32_t ff_opus_rc_dec_cdf(OpusRangeCoder *rc, const uint16_t *cdf)
{
    unsigned int k, scale, total, symbol, low, high;

    total = *cdf++;

    scale = rc->range / total;
    symbol = rc->value / scale + 1;
    symbol = total - FFMIN(symbol, total);

    for (k = 0; cdf[k] <= symbol; k++);
    high = cdf[k];
    low = k ? cdf[k-1] : 0;

    opus_rc_dec_update(rc, scale, low, high, total);

    return k;
}
