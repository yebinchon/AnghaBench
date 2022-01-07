
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int tf; void* seg_map; TYPE_1__* hwaccel_priv_buf; int hwaccel_picture_private; } ;
typedef TYPE_2__ VP8Frame ;
struct TYPE_11__ {int mb_width; int mb_height; TYPE_7__* avctx; } ;
typedef TYPE_3__ VP8Context ;
struct TYPE_13__ {TYPE_4__* hwaccel; } ;
struct TYPE_12__ {int frame_priv_data_size; } ;
struct TYPE_9__ {int data; } ;
typedef TYPE_4__ AVHWAccel ;


 int AVERROR (int ) ;
 int AV_GET_BUFFER_FLAG_REF ;
 int ENOMEM ;
 void* av_buffer_allocz (int) ;
 int av_buffer_unref (void**) ;
 int ff_thread_get_buffer (TYPE_7__*,int *,int ) ;
 int ff_thread_release_buffer (TYPE_7__*,int *) ;

__attribute__((used)) static int vp8_alloc_frame(VP8Context *s, VP8Frame *f, int ref)
{
    int ret;
    if ((ret = ff_thread_get_buffer(s->avctx, &f->tf,
                                    ref ? AV_GET_BUFFER_FLAG_REF : 0)) < 0)
        return ret;
    if (!(f->seg_map = av_buffer_allocz(s->mb_width * s->mb_height)))
        goto fail;
    if (s->avctx->hwaccel) {
        const AVHWAccel *hwaccel = s->avctx->hwaccel;
        if (hwaccel->frame_priv_data_size) {
            f->hwaccel_priv_buf = av_buffer_allocz(hwaccel->frame_priv_data_size);
            if (!f->hwaccel_priv_buf)
                goto fail;
            f->hwaccel_picture_private = f->hwaccel_priv_buf->data;
        }
    }
    return 0;

fail:
    av_buffer_unref(&f->seg_map);
    ff_thread_release_buffer(s->avctx, &f->tf);
    return AVERROR(ENOMEM);
}
