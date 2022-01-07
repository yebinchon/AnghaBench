
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kxld_size_t ;


 int PAGE_SIZE ;
 scalar_t__ s_cross_link_enabled ;
 int s_cross_link_page_size ;

kxld_size_t kxld_get_effective_page_size(void)
{



    if (s_cross_link_enabled) {
        return s_cross_link_page_size;
    } else {
        return PAGE_SIZE;
    }

}
