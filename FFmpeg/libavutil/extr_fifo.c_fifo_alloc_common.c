
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* buffer; void* end; } ;
typedef TYPE_1__ AVFifoBuffer ;


 int av_fifo_reset (TYPE_1__*) ;
 int av_free (void*) ;
 TYPE_1__* av_mallocz (int) ;

__attribute__((used)) static AVFifoBuffer *fifo_alloc_common(void *buffer, size_t size)
{
    AVFifoBuffer *f;
    if (!buffer)
        return ((void*)0);
    f = av_mallocz(sizeof(AVFifoBuffer));
    if (!f) {
        av_free(buffer);
        return ((void*)0);
    }
    f->buffer = buffer;
    f->end = f->buffer + size;
    av_fifo_reset(f);
    return f;
}
