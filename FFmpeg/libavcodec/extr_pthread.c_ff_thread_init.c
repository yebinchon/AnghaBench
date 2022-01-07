
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int active_thread_type; } ;
typedef TYPE_1__ AVCodecContext ;


 int FF_THREAD_FRAME ;
 int FF_THREAD_SLICE ;
 int ff_frame_thread_init (TYPE_1__*) ;
 int ff_slice_thread_init (TYPE_1__*) ;
 int validate_thread_parameters (TYPE_1__*) ;

int ff_thread_init(AVCodecContext *avctx)
{
    validate_thread_parameters(avctx);

    if (avctx->active_thread_type&FF_THREAD_SLICE)
        return ff_slice_thread_init(avctx);
    else if (avctx->active_thread_type&FF_THREAD_FRAME)
        return ff_frame_thread_init(avctx);

    return 0;
}
