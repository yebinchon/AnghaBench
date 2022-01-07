
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int _libkernel_voucher_functions_t ;


 int KERN_SUCCESS ;
 int _libkernel_voucher_functions ;

kern_return_t
__libkernel_voucher_init(_libkernel_voucher_functions_t fns)
{
 _libkernel_voucher_functions = fns;
 return KERN_SUCCESS;
}
