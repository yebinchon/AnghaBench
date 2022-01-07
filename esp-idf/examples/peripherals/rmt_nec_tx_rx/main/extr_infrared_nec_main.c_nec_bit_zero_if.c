
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ level0; scalar_t__ level1; int duration1; int duration0; } ;
typedef TYPE_1__ rmt_item32_t ;


 int NEC_BIT_MARGIN ;
 int NEC_BIT_ZERO_HIGH_US ;
 int NEC_BIT_ZERO_LOW_US ;
 scalar_t__ RMT_RX_ACTIVE_LEVEL ;
 scalar_t__ nec_check_in_range (int ,int ,int ) ;

__attribute__((used)) static bool nec_bit_zero_if(rmt_item32_t* item)
{
    if((item->level0 == RMT_RX_ACTIVE_LEVEL && item->level1 != RMT_RX_ACTIVE_LEVEL)
        && nec_check_in_range(item->duration0, NEC_BIT_ZERO_HIGH_US, NEC_BIT_MARGIN)
        && nec_check_in_range(item->duration1, NEC_BIT_ZERO_LOW_US, NEC_BIT_MARGIN)) {
        return 1;
    }
    return 0;
}
