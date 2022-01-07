
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* buffer; } ;
struct TYPE_4__ {int refcount; } ;
typedef TYPE_2__ AVBufferRef ;


 int atomic_load (int *) ;

int av_buffer_get_ref_count(const AVBufferRef *buf)
{
    return atomic_load(&buf->buffer->refcount);
}
