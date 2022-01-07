
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rmt_item32_t ;


 int BIT_ZERO_HIGH_US ;
 int BIT_ZERO_LOW_US ;
 int fill_item_level (int *,int ,int ) ;

__attribute__((used)) static void fill_item_bit_zero(rmt_item32_t* item)
{
    fill_item_level(item, BIT_ZERO_HIGH_US, BIT_ZERO_LOW_US);
}
