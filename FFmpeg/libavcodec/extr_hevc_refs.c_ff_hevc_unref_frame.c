
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int avctx; } ;
struct TYPE_7__ {int flags; int * hwaccel_picture_private; int hwaccel_priv_buf; int * collocated_ref; int * refPicList; int * rpl_tab; int rpl_tab_buf; int rpl_buf; int * tab_mvf; int tab_mvf_buf; int tf; TYPE_1__* frame; } ;
struct TYPE_6__ {int * buf; } ;
typedef TYPE_2__ HEVCFrame ;
typedef TYPE_3__ HEVCContext ;


 int av_buffer_unref (int *) ;
 int ff_thread_release_buffer (int ,int *) ;

void ff_hevc_unref_frame(HEVCContext *s, HEVCFrame *frame, int flags)
{

    if (!frame->frame || !frame->frame->buf[0])
        return;

    frame->flags &= ~flags;
    if (!frame->flags) {
        ff_thread_release_buffer(s->avctx, &frame->tf);

        av_buffer_unref(&frame->tab_mvf_buf);
        frame->tab_mvf = ((void*)0);

        av_buffer_unref(&frame->rpl_buf);
        av_buffer_unref(&frame->rpl_tab_buf);
        frame->rpl_tab = ((void*)0);
        frame->refPicList = ((void*)0);

        frame->collocated_ref = ((void*)0);

        av_buffer_unref(&frame->hwaccel_priv_buf);
        frame->hwaccel_picture_private = ((void*)0);
    }
}
