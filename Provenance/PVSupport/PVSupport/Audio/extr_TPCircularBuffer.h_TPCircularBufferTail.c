
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int tail; scalar_t__ buffer; int fillCount; } ;
typedef TYPE_1__ TPCircularBuffer ;



__attribute__((used)) static __inline__ __attribute__((always_inline)) void* TPCircularBufferTail(TPCircularBuffer *buffer, int32_t* availableBytes) {
    *availableBytes = buffer->fillCount;

    return (void*)((char*)buffer->buffer + buffer->tail);
}
