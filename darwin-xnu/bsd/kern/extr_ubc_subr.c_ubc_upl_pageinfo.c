
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;
typedef int upl_page_info_t ;


 int * UPL_GET_INTERNAL_PAGE_LIST (int ) ;

upl_page_info_t *
ubc_upl_pageinfo(
 upl_t upl)
{
 return (UPL_GET_INTERNAL_PAGE_LIST(upl));
}
