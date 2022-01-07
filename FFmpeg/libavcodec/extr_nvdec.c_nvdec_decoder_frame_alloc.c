
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ nb_allocated; scalar_t__ dpb_size; } ;
typedef TYPE_1__ NVDECFramePool ;
typedef TYPE_2__ AVBufferRef ;


 TYPE_2__* av_buffer_alloc (int) ;

__attribute__((used)) static AVBufferRef *nvdec_decoder_frame_alloc(void *opaque, int size)
{
    NVDECFramePool *pool = opaque;
    AVBufferRef *ret;

    if (pool->nb_allocated >= pool->dpb_size)
        return ((void*)0);

    ret = av_buffer_alloc(sizeof(unsigned int));
    if (!ret)
        return ((void*)0);

    *(unsigned int*)ret->data = pool->nb_allocated++;

    return ret;
}
