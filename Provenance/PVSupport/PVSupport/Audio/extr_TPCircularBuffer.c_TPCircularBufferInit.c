
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_address_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_3__ {int length; scalar_t__ tail; scalar_t__ head; scalar_t__ fillCount; void* buffer; } ;
typedef TYPE_1__ TPCircularBuffer ;


 scalar_t__ ERR_SUCCESS ;
 int VM_FLAGS_ANYWHERE ;
 int VM_INHERIT_DEFAULT ;
 int mach_task_self () ;
 int printf (char*) ;
 int reportResult (scalar_t__,char*) ;
 int round_page (int) ;
 scalar_t__ vm_allocate (int ,scalar_t__*,int,int ) ;
 scalar_t__ vm_deallocate (int ,scalar_t__,int) ;
 scalar_t__ vm_remap (int ,scalar_t__*,int,int ,int ,int ,scalar_t__,int ,int *,int *,int ) ;

bool TPCircularBufferInit(TPCircularBuffer *buffer, int length) {


    int retries = 3;
    while ( 1 ) {

        buffer->length = round_page(length);



        vm_address_t bufferAddress;
        kern_return_t result = vm_allocate(mach_task_self(),
                                           &bufferAddress,
                                           buffer->length * 2,
                                           VM_FLAGS_ANYWHERE);
        if ( result != ERR_SUCCESS ) {
            if ( retries-- == 0 ) {
                reportResult(result, "Buffer allocation");
                return 0;
            }

            continue;
        }


        result = vm_deallocate(mach_task_self(),
                               bufferAddress + buffer->length,
                               buffer->length);
        if ( result != ERR_SUCCESS ) {
            if ( retries-- == 0 ) {
                reportResult(result, "Buffer deallocation");
                return 0;
            }

            vm_deallocate(mach_task_self(), bufferAddress, buffer->length);
            continue;
        }


        vm_address_t virtualAddress = bufferAddress + buffer->length;
        vm_prot_t cur_prot, max_prot;
        result = vm_remap(mach_task_self(),
                          &virtualAddress,
                          buffer->length,
                          0,
                          0,
                          mach_task_self(),
                          bufferAddress,
                          0,
                          &cur_prot,
                          &max_prot,
                          VM_INHERIT_DEFAULT);
        if ( result != ERR_SUCCESS ) {
            if ( retries-- == 0 ) {
                reportResult(result, "Remap buffer memory");
                return 0;
            }

            vm_deallocate(mach_task_self(), bufferAddress, buffer->length);
            continue;
        }

        if ( virtualAddress != bufferAddress+buffer->length ) {

            if ( retries-- == 0 ) {
                printf("Couldn't map buffer memory to end of buffer\n");
                return 0;
            }

            vm_deallocate(mach_task_self(), virtualAddress, buffer->length);
            vm_deallocate(mach_task_self(), bufferAddress, buffer->length);
            continue;
        }

        buffer->buffer = (void*)bufferAddress;
        buffer->fillCount = 0;
        buffer->head = buffer->tail = 0;

        return 1;
    }
    return 0;
}
