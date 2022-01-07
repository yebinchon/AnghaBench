
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int height; void* coded_height; int width; void* coded_width; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int texdsp; } ;
typedef TYPE_1__ DXVContext ;
typedef TYPE_2__ AVCodecContext ;


 int AV_LOG_ERROR ;
 void* FFALIGN (int ,int) ;
 int av_image_check_size (int ,int ,int ,TYPE_2__*) ;
 int av_log (TYPE_2__*,int ,char*,int ,int ) ;
 int ff_texturedsp_init (int *) ;

__attribute__((used)) static int dxv_init(AVCodecContext *avctx)
{
    DXVContext *ctx = avctx->priv_data;
    int ret = av_image_check_size(avctx->width, avctx->height, 0, avctx);

    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Invalid image size %dx%d.\n",
               avctx->width, avctx->height);
        return ret;
    }


    avctx->coded_width = FFALIGN(avctx->width, 16);
    avctx->coded_height = FFALIGN(avctx->height, 16);

    ff_texturedsp_init(&ctx->texdsp);

    return 0;
}
