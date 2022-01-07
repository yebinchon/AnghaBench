
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rmt_item32_t ;


 int BIT_END ;
 int fill_item_level (int *,int ,int) ;

__attribute__((used)) static void fill_item_end(rmt_item32_t* item)
{
    fill_item_level(item, BIT_END, 0x7fff);
}
