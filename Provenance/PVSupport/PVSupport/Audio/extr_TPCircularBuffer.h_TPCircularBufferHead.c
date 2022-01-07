
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {int head; scalar_t__ buffer; scalar_t__ fillCount; scalar_t__ length; } ;
typedef TYPE_1__ TPCircularBuffer ;



__attribute__((used)) static __inline__ __attribute__((always_inline)) void* TPCircularBufferHead(TPCircularBuffer *buffer, int32_t* availableBytes) {
    *availableBytes = (buffer->length - buffer->fillCount);

    return (void*)((char*)buffer->buffer + buffer->head);
}
