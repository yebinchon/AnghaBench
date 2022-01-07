
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int avctx; } ;
typedef TYPE_1__ HQContext ;
typedef int GetBitContext ;
typedef int AVFrame ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,int,int) ;
 int hqa_decode_mb (TYPE_1__*,int *,int,int *,int,int) ;

__attribute__((used)) static int hqa_decode_slice(HQContext *ctx, AVFrame *pic, GetBitContext *gb,
                            int quant, int slice_no, int w, int h)
{
    int i, j, off;
    int ret;

    for (i = 0; i < h; i += 16) {
        off = (slice_no * 16 + i * 3) & 0x70;
        for (j = off; j < w; j += 128) {
            ret = hqa_decode_mb(ctx, pic, quant, gb, j, i);
            if (ret < 0) {
                av_log(ctx->avctx, AV_LOG_ERROR,
                       "Error decoding macroblock at %dx%d.\n", i, j);
                return ret;
            }
        }
    }

    return 0;
}
