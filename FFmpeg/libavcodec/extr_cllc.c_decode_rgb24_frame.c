
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int VLC ;
struct TYPE_11__ {int height; } ;
struct TYPE_10__ {int * linesize; int ** data; } ;
struct TYPE_9__ {TYPE_3__* avctx; } ;
typedef int GetBitContext ;
typedef TYPE_1__ CLLCContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 int ff_free_vlc (int *) ;
 int read_code_table (TYPE_1__*,int *,int *) ;
 int read_rgb24_component_line (TYPE_1__*,int *,int*,int *,int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int decode_rgb24_frame(CLLCContext *ctx, GetBitContext *gb, AVFrame *pic)
{
    AVCodecContext *avctx = ctx->avctx;
    uint8_t *dst;
    int pred[3];
    int ret;
    int i, j;
    VLC vlc[3];

    pred[0] = 0x80;
    pred[1] = 0x80;
    pred[2] = 0x80;

    dst = pic->data[0];

    skip_bits(gb, 16);


    for (i = 0; i < 3; i++) {
        ret = read_code_table(ctx, gb, &vlc[i]);
        if (ret < 0) {
            for (j = 0; j <= i; j++)
                ff_free_vlc(&vlc[j]);

            av_log(ctx->avctx, AV_LOG_ERROR,
                   "Could not read code table %d.\n", i);
            return ret;
        }
    }


    for (i = 0; i < avctx->height; i++) {
        for (j = 0; j < 3; j++)
            read_rgb24_component_line(ctx, gb, &pred[j], &vlc[j], &dst[j]);

        dst += pic->linesize[0];
    }

    for (i = 0; i < 3; i++)
        ff_free_vlc(&vlc[i]);

    return 0;
}
