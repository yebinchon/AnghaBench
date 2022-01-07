
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;
typedef int kern_return_t ;


 int upl_abort (int ,int) ;
 int upl_deallocate (int ) ;

kern_return_t
ubc_upl_abort(
 upl_t upl,
 int abort_type)
{
 kern_return_t kr;

 kr = upl_abort(upl, abort_type);
 upl_deallocate(upl);
 return kr;
}
