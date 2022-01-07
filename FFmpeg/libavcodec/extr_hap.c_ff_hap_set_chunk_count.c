
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chunk_count; int chunk_results; int chunks; } ;
typedef TYPE_1__ HapContext ;
typedef int HapChunk ;


 int AVERROR_INVALIDDATA ;
 int av_reallocp_array (int *,int,int) ;

int ff_hap_set_chunk_count(HapContext *ctx, int count, int first_in_frame)
{
    int ret = 0;
    if (first_in_frame == 1 && ctx->chunk_count != count) {
        int ret = av_reallocp_array(&ctx->chunks, count, sizeof(HapChunk));
        if (ret == 0)
            ret = av_reallocp_array(&ctx->chunk_results, count, sizeof(int));
        if (ret < 0) {
            ctx->chunk_count = 0;
        } else {
            ctx->chunk_count = count;
        }
    } else if (ctx->chunk_count != count) {




        ret = AVERROR_INVALIDDATA;
    }
    return ret;
}
