
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long cbBuffer; unsigned long BufferType; void* pvBuffer; } ;
typedef TYPE_1__ SecBuffer ;



__attribute__((used)) static void init_sec_buffer(SecBuffer *buffer, unsigned long type,
                            void *data, unsigned long size)
{
    buffer->cbBuffer = size;
    buffer->BufferType = type;
    buffer->pvBuffer = data;
}
