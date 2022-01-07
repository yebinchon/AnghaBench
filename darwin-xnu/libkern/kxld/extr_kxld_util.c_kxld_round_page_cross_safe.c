
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kxld_addr_t ;


 int round_page (int) ;
 scalar_t__ s_cross_link_enabled ;
 int s_cross_link_page_size ;

kxld_addr_t kxld_round_page_cross_safe(kxld_addr_t offset)
{




    if (s_cross_link_enabled) {
        return (offset + (s_cross_link_page_size - 1)) &
               (~(s_cross_link_page_size - 1));
    } else {
        return round_page(offset);
    }

}
