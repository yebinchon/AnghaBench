
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tf; int * hwaccel_picture_private; int hwaccel_priv_buf; int seg_map; } ;
typedef TYPE_1__ VP8Frame ;
struct TYPE_6__ {int avctx; } ;
typedef TYPE_2__ VP8Context ;


 int av_buffer_unref (int *) ;
 int ff_thread_release_buffer (int ,int *) ;

__attribute__((used)) static void vp8_release_frame(VP8Context *s, VP8Frame *f)
{
    av_buffer_unref(&f->seg_map);
    av_buffer_unref(&f->hwaccel_priv_buf);
    f->hwaccel_picture_private = ((void*)0);
    ff_thread_release_buffer(s->avctx, &f->tf);
}
