
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_address_t ;
struct TYPE_4__ {int length; scalar_t__ buffer; } ;
typedef TYPE_1__ TPCircularBuffer ;


 int mach_task_self () ;
 int memset (TYPE_1__*,int ,int) ;
 int vm_deallocate (int ,int ,int) ;

void TPCircularBufferCleanup(TPCircularBuffer *buffer) {
    vm_deallocate(mach_task_self(), (vm_address_t)buffer->buffer, buffer->length * 2);
    memset(buffer, 0, sizeof(TPCircularBuffer));
}
