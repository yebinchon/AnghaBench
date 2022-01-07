
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {void* output_buffer; void* recon_surface; void* input_surface; void* priv_data; } ;
typedef TYPE_2__ VAAPIEncodePicture ;
struct TYPE_10__ {TYPE_1__* codec; } ;
typedef TYPE_3__ VAAPIEncodeContext ;
struct TYPE_11__ {TYPE_3__* priv_data; } ;
struct TYPE_8__ {int picture_priv_data_size; } ;
typedef TYPE_4__ AVCodecContext ;


 void* VA_INVALID_ID ;
 int av_freep (TYPE_2__**) ;
 void* av_mallocz (int) ;

__attribute__((used)) static VAAPIEncodePicture *vaapi_encode_alloc(AVCodecContext *avctx)
{
    VAAPIEncodeContext *ctx = avctx->priv_data;
    VAAPIEncodePicture *pic;

    pic = av_mallocz(sizeof(*pic));
    if (!pic)
        return ((void*)0);

    if (ctx->codec->picture_priv_data_size > 0) {
        pic->priv_data = av_mallocz(ctx->codec->picture_priv_data_size);
        if (!pic->priv_data) {
            av_freep(&pic);
            return ((void*)0);
        }
    }

    pic->input_surface = VA_INVALID_ID;
    pic->recon_surface = VA_INVALID_ID;
    pic->output_buffer = VA_INVALID_ID;

    return pic;
}
