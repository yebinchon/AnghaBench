
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int gb; int avctx; } ;
struct TYPE_5__ {int max_bits; size_t num; size_t max_num; int* bits; int* lens; int val_bits; int * nums; } ;
typedef TYPE_1__ TM2Huff ;
typedef TYPE_2__ TM2Context ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int FFMAX (int,int) ;
 int av_log (int ,int ,char*,...) ;
 int get_bits1 (int *) ;
 int get_bits_long (int *,int ) ;

__attribute__((used)) static int tm2_read_tree(TM2Context *ctx, uint32_t prefix, int length, TM2Huff *huff)
{
    int ret, ret2;
    if (length > huff->max_bits) {
        av_log(ctx->avctx, AV_LOG_ERROR, "Tree exceeded its given depth (%i)\n",
               huff->max_bits);
        return AVERROR_INVALIDDATA;
    }

    if (!get_bits1(&ctx->gb)) {
        if (length == 0) {
            length = 1;
        }
        if (huff->num >= huff->max_num) {
            av_log(ctx->avctx, AV_LOG_DEBUG, "Too many literals\n");
            return AVERROR_INVALIDDATA;
        }
        huff->nums[huff->num] = get_bits_long(&ctx->gb, huff->val_bits);
        huff->bits[huff->num] = prefix;
        huff->lens[huff->num] = length;
        huff->num++;
        return length;
    } else {
        if ((ret2 = tm2_read_tree(ctx, prefix << 1, length + 1, huff)) < 0)
            return ret2;
        if ((ret = tm2_read_tree(ctx, (prefix << 1) | 1, length + 1, huff)) < 0)
            return ret;
    }
    return FFMAX(ret, ret2);
}
