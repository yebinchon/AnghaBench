
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;
typedef int upl_page_info_t ;
typedef int kern_return_t ;


 int MAX_UPL_SIZE_BYTES ;
 int PAGE_SHIFT ;
 int * UPL_GET_INTERNAL_PAGE_LIST (int ) ;
 int upl_commit (int ,int *,int) ;
 int upl_deallocate (int ) ;

kern_return_t
ubc_upl_commit(
 upl_t upl)
{
 upl_page_info_t *pl;
 kern_return_t kr;

 pl = UPL_GET_INTERNAL_PAGE_LIST(upl);
 kr = upl_commit(upl, pl, MAX_UPL_SIZE_BYTES >> PAGE_SHIFT);
 upl_deallocate(upl);
 return kr;
}
