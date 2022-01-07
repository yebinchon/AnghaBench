
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* buffer; } ;
struct TYPE_4__ {int flags; int refcount; } ;
typedef TYPE_2__ AVBufferRef ;


 int AV_BUFFER_FLAG_READONLY ;
 int atomic_load (int *) ;

int av_buffer_is_writable(const AVBufferRef *buf)
{
    if (buf->buffer->flags & AV_BUFFER_FLAG_READONLY)
        return 0;

    return atomic_load(&buf->buffer->refcount) == 1;
}
