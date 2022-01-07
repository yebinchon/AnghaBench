
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int ** data; int format; int * buf; } ;
struct TYPE_9__ {int * buffer; TYPE_1__* pool; } ;
struct TYPE_8__ {int refcount; } ;
typedef int MMAL_BUFFER_HEADER_T ;
typedef TYPE_1__ FFPoolRef ;
typedef TYPE_2__ FFBufferRef ;
typedef TYPE_3__ AVFrame ;


 int AVERROR (int ) ;
 int AV_BUFFER_FLAG_READONLY ;
 int AV_PIX_FMT_MMAL ;
 int ENOMEM ;
 int atomic_fetch_add_explicit (int *,int,int ) ;
 int av_buffer_create (void*,int,int ,int *,int ) ;
 int av_free (TYPE_2__*) ;
 TYPE_2__* av_mallocz (int) ;
 int ffmmal_release_frame ;
 int memory_order_relaxed ;
 int mmal_buffer_header_acquire (int *) ;

__attribute__((used)) static int ffmmal_set_ref(AVFrame *frame, FFPoolRef *pool,
                          MMAL_BUFFER_HEADER_T *buffer)
{
    FFBufferRef *ref = av_mallocz(sizeof(*ref));
    if (!ref)
        return AVERROR(ENOMEM);

    ref->pool = pool;
    ref->buffer = buffer;

    frame->buf[0] = av_buffer_create((void *)ref, sizeof(*ref),
                                     ffmmal_release_frame, ((void*)0),
                                     AV_BUFFER_FLAG_READONLY);
    if (!frame->buf[0]) {
        av_free(ref);
        return AVERROR(ENOMEM);
    }

    atomic_fetch_add_explicit(&ref->pool->refcount, 1, memory_order_relaxed);
    mmal_buffer_header_acquire(buffer);

    frame->format = AV_PIX_FMT_MMAL;
    frame->data[3] = (uint8_t *)ref->buffer;
    return 0;
}
