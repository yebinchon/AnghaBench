
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; int opaque; int (* free ) (int ,int ) ;int refcount; struct TYPE_6__* buffer; } ;
typedef TYPE_1__ AVBufferRef ;
typedef TYPE_1__ AVBuffer ;


 int atomic_fetch_add_explicit (int *,int,int ) ;
 int av_freep (TYPE_1__**) ;
 int memory_order_acq_rel ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void buffer_replace(AVBufferRef **dst, AVBufferRef **src)
{
    AVBuffer *b;

    b = (*dst)->buffer;

    if (src) {
        **dst = **src;
        av_freep(src);
    } else
        av_freep(dst);

    if (atomic_fetch_add_explicit(&b->refcount, -1, memory_order_acq_rel) == 1) {
        b->free(b->opaque, b->data);
        av_freep(&b);
    }
}
