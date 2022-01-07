
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;
typedef int upl_page_info_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int upl_commit (int ,int *,int ) ;
 int upl_deallocate (int ) ;

kern_return_t
kernel_upl_commit(
 upl_t upl,
 upl_page_info_t *pl,
 mach_msg_type_number_t count)
{
 kern_return_t kr;

 kr = upl_commit(upl, pl, count);
 upl_deallocate(upl);
 return kr;
}
