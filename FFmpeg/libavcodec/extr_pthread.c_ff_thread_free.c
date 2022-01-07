
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int active_thread_type; int thread_count; } ;
typedef TYPE_1__ AVCodecContext ;


 int FF_THREAD_FRAME ;
 int ff_frame_thread_free (TYPE_1__*,int ) ;
 int ff_slice_thread_free (TYPE_1__*) ;

void ff_thread_free(AVCodecContext *avctx)
{
    if (avctx->active_thread_type&FF_THREAD_FRAME)
        ff_frame_thread_free(avctx, avctx->thread_count);
    else
        ff_slice_thread_free(avctx);
}
