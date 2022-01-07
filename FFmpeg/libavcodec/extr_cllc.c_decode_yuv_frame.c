
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int VLC ;
struct TYPE_12__ {int height; } ;
struct TYPE_11__ {int * linesize; scalar_t__** data; } ;
struct TYPE_10__ {TYPE_3__* avctx; } ;
typedef int GetBitContext ;
typedef TYPE_1__ CLLCContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 int avpriv_request_sample (TYPE_3__*,char*) ;
 int ff_free_vlc (int *) ;
 scalar_t__ get_bits (int *,int) ;
 int read_code_table (TYPE_1__*,int *,int *) ;
 int read_yuv_component_line (TYPE_1__*,int *,int*,int *,scalar_t__*,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int decode_yuv_frame(CLLCContext *ctx, GetBitContext *gb, AVFrame *pic)
{
    AVCodecContext *avctx = ctx->avctx;
    uint8_t block;
    uint8_t *dst[3];
    int pred[3];
    int ret;
    int i, j;
    VLC vlc[2];

    pred[0] = 0x80;
    pred[1] = 0x80;
    pred[2] = 0x80;

    dst[0] = pic->data[0];
    dst[1] = pic->data[1];
    dst[2] = pic->data[2];

    skip_bits(gb, 8);

    block = get_bits(gb, 8);
    if (block) {
        avpriv_request_sample(ctx->avctx, "Blocked YUV");
        return AVERROR_PATCHWELCOME;
    }


    for (i = 0; i < 2; i++) {
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
        read_yuv_component_line(ctx, gb, &pred[0], &vlc[0], dst[0], 0);
        read_yuv_component_line(ctx, gb, &pred[1], &vlc[1], dst[1], 1);
        read_yuv_component_line(ctx, gb, &pred[2], &vlc[1], dst[2], 1);

        for (j = 0; j < 3; j++)
            dst[j] += pic->linesize[j];
    }

    for (i = 0; i < 2; i++)
        ff_free_vlc(&vlc[i]);

    return 0;
}
