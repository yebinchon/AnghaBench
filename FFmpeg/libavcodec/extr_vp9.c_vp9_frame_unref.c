
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hwaccel_picture_private; int * segmentation_map; int hwaccel_priv_buf; int extradata; int tf; } ;
typedef TYPE_1__ VP9Frame ;
typedef int AVCodecContext ;


 int av_buffer_unref (int *) ;
 int ff_thread_release_buffer (int *,int *) ;

__attribute__((used)) static void vp9_frame_unref(AVCodecContext *avctx, VP9Frame *f)
{
    ff_thread_release_buffer(avctx, &f->tf);
    av_buffer_unref(&f->extradata);
    av_buffer_unref(&f->hwaccel_priv_buf);
    f->segmentation_map = ((void*)0);
    f->hwaccel_picture_private = ((void*)0);
}
