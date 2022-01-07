
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ppnum_t ;
struct TYPE_3__ {scalar_t__ efiRuntimeServicesPageStart; scalar_t__ efiRuntimeServicesPageCount; } ;
typedef TYPE_1__ boot_args ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ bootArgs; } ;


 TYPE_2__ PE_state ;

boolean_t
efi_valid_page(ppnum_t ppn)
{
    boot_args *args = (boot_args *)PE_state.bootArgs;
    ppnum_t pstart = args->efiRuntimeServicesPageStart;
    ppnum_t pend = pstart + args->efiRuntimeServicesPageCount;

    return pstart <= ppn && ppn < pend;
}
