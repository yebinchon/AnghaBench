
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rmt_item32_t ;


 int NEC_BIT_ONE_HIGH_US ;
 int NEC_BIT_ONE_LOW_US ;
 int nec_fill_item_level (int *,int ,int ) ;

__attribute__((used)) static void nec_fill_item_bit_one(rmt_item32_t* item)
{
    nec_fill_item_level(item, NEC_BIT_ONE_HIGH_US, NEC_BIT_ONE_LOW_US);
}
