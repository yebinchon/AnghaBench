
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int range; scalar_t__ code1; scalar_t__ code; } ;
typedef TYPE_1__ RangeCoder ;


 int AVERROR_INVALIDDATA ;

__attribute__((used)) static int get_freq0(RangeCoder *rc, uint32_t total_freq, uint32_t *freq)
{
    if (rc->range == 0)
        return AVERROR_INVALIDDATA;

    *freq = total_freq * (uint64_t)(rc->code - rc->code1) / rc->range;

    return 0;
}
