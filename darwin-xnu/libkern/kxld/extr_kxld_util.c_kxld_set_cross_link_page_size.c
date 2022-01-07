
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kxld_size_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int s_cross_link_enabled ;
 int s_cross_link_page_size ;

boolean_t kxld_set_cross_link_page_size(kxld_size_t target_page_size)
{

    if ((target_page_size != 0) &&
        ((target_page_size & (target_page_size - 1)) == 0)) {

        s_cross_link_enabled = TRUE;
        s_cross_link_page_size = target_page_size;

        return TRUE;
    } else {
        return FALSE;
    }
}
