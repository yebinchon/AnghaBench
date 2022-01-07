
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kmod_info_t ;
typedef int kern_return_t ;


 int KERN_SUCCESS ;

kern_return_t pgokext_start(kmod_info_t * ki, void *d)
{
    return KERN_SUCCESS;
}
