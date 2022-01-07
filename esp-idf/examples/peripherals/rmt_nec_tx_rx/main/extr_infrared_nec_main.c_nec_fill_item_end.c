
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rmt_item32_t ;


 int NEC_BIT_END ;
 int nec_fill_item_level (int *,int ,int) ;

__attribute__((used)) static void nec_fill_item_end(rmt_item32_t* item)
{
    nec_fill_item_level(item, NEC_BIT_END, 0x7fff);
}
