
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ level0; scalar_t__ level1; int duration1; int duration0; } ;
typedef TYPE_1__ rmt_item32_t ;


 int BIT_MARGIN ;
 int BIT_ZERO_HIGH_US ;
 int BIT_ZERO_LOW_US ;
 scalar_t__ RMT_RX_ACTIVE_LEVEL ;
 scalar_t__ check_in_range (int ,int ,int ) ;

__attribute__((used)) static bool bit_zero_if(rmt_item32_t* item)
{
    if((item->level0 == RMT_RX_ACTIVE_LEVEL && item->level1 != RMT_RX_ACTIVE_LEVEL)
        && check_in_range(item->duration0, BIT_ZERO_HIGH_US, BIT_MARGIN)
        && check_in_range(item->duration1, BIT_ZERO_LOW_US, BIT_MARGIN)) {
        return 1;
    }
    return 0;
}
