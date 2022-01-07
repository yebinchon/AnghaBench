
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_address_t ;


 int _mh_execute_header ;
 int panic_print_kmod_symbol_name (int ) ;
 scalar_t__ panic_print_macho_symbol_name (int *,int ,char*) ;

void
panic_print_symbol_name(vm_address_t search)
{

    if (panic_print_macho_symbol_name(&_mh_execute_header, search, "mach_kernel") == 0) {

        panic_print_kmod_symbol_name(search);
    }
}
