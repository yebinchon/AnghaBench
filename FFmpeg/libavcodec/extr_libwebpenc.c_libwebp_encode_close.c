
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ LibWebPContextCommon ;
typedef TYPE_2__ AVCodecContext ;


 int av_frame_free (int *) ;

__attribute__((used)) static int libwebp_encode_close(AVCodecContext *avctx)
{
    LibWebPContextCommon *s = avctx->priv_data;
    av_frame_free(&s->ref);

    return 0;
}
