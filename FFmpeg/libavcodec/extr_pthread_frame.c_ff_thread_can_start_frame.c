
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int active_thread_type; TYPE_2__* codec; TYPE_1__* internal; } ;
struct TYPE_9__ {int state; } ;
struct TYPE_8__ {scalar_t__ update_thread_context; } ;
struct TYPE_7__ {TYPE_3__* thread_ctx; } ;
typedef TYPE_3__ PerThreadContext ;
typedef TYPE_4__ AVCodecContext ;


 int FF_THREAD_FRAME ;
 scalar_t__ STATE_SETTING_UP ;
 int THREAD_SAFE_CALLBACKS (TYPE_4__*) ;
 scalar_t__ atomic_load (int *) ;

int ff_thread_can_start_frame(AVCodecContext *avctx)
{
    PerThreadContext *p = avctx->internal->thread_ctx;
    if ((avctx->active_thread_type&FF_THREAD_FRAME) && atomic_load(&p->state) != STATE_SETTING_UP &&
        (avctx->codec->update_thread_context || !THREAD_SAFE_CALLBACKS(avctx))) {
        return 0;
    }
    return 1;
}
