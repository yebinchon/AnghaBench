
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rmt_item32_t ;


 int NEC_HEADER_HIGH_US ;
 int NEC_HEADER_LOW_US ;
 int nec_fill_item_level (int *,int ,int ) ;

__attribute__((used)) static void nec_fill_item_header(rmt_item32_t* item)
{
    nec_fill_item_level(item, NEC_HEADER_HIGH_US, NEC_HEADER_LOW_US);
}
