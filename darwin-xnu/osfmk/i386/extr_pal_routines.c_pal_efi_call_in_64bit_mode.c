
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pal_efi_registers {scalar_t__ rax; } ;
typedef int kern_return_t ;


 int DBG (char*,scalar_t__,struct pal_efi_registers*,void*,size_t,scalar_t__*) ;
 int KERN_INVALID_ADDRESS ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_NOT_SUPPORTED ;
 int KERN_SUCCESS ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int _pal_efi_call_in_64bit_mode_asm (scalar_t__,struct pal_efi_registers*,void*,size_t) ;
 int gPEEFIRuntimeServices ;
 int gPEEFISystemTable ;

kern_return_t
pal_efi_call_in_64bit_mode(uint64_t func,
                           struct pal_efi_registers *efi_reg,
                           void *stack_contents,
                           size_t stack_contents_size,
                           uint64_t *efi_status)
{
    DBG("pal_efi_call_in_64bit_mode(0x%016llx, %p, %p, %lu, %p)\n",
        func, efi_reg, stack_contents, stack_contents_size, efi_status);

    if (func == 0) {
        return KERN_INVALID_ADDRESS;
    }

    if ((efi_reg == ((void*)0))
        || (stack_contents == ((void*)0))
        || (stack_contents_size % 16 != 0)) {
        return KERN_INVALID_ARGUMENT;
    }

    if (!gPEEFISystemTable || !gPEEFIRuntimeServices) {
        return KERN_NOT_SUPPORTED;
    }

    if (func < VM_MIN_KERNEL_ADDRESS) {




        return KERN_INVALID_ADDRESS;
    }

    _pal_efi_call_in_64bit_mode_asm(func,
                                    efi_reg,
                                    stack_contents,
                                    stack_contents_size);

    *efi_status = efi_reg->rax;

    return KERN_SUCCESS;
}
