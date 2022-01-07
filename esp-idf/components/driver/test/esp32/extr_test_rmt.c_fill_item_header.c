
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rmt_item32_t ;


 int HEADER_HIGH_US ;
 int HEADER_LOW_US ;
 int fill_item_level (int *,int ,int ) ;

__attribute__((used)) static void fill_item_header(rmt_item32_t* item)
{
    fill_item_level(item, HEADER_HIGH_US, HEADER_LOW_US);
}
