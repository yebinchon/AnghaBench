
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv_data; } ;
struct TYPE_5__ {int ref; } ;
struct TYPE_6__ {int enc; TYPE_1__ cc; } ;
typedef TYPE_2__ LibWebPAnimContext ;
typedef TYPE_3__ AVCodecContext ;


 int WebPAnimEncoderDelete (int ) ;
 int av_frame_free (int *) ;

__attribute__((used)) static int libwebp_anim_encode_close(AVCodecContext *avctx)
{
    LibWebPAnimContext *s = avctx->priv_data;
    av_frame_free(&s->cc.ref);
    WebPAnimEncoderDelete(s->enc);

    return 0;
}
