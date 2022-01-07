
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int bits; int length; int * recode; int vlc; } ;
struct TYPE_9__ {int avctx; int gb; } ;
struct TYPE_8__ {int val_bits; int max_bits; int nodes; int num; int max_num; int * lens; int * bits; int * nums; void* min_bits; } ;
typedef TYPE_1__ TM2Huff ;
typedef TYPE_2__ TM2Context ;
typedef TYPE_3__ TM2Codes ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 void* av_calloc (int,int) ;
 int av_free (int *) ;
 int av_log (int ,int ,char*,...) ;
 int * av_malloc_array (int,int) ;
 void* get_bits (int *,int) ;
 int get_bits_long (int *,int) ;
 int init_vlc (int *,int,int,int *,int,int,int *,int,int,int ) ;
 int tm2_read_tree (TYPE_2__*,int ,int ,TYPE_1__*) ;

__attribute__((used)) static int tm2_build_huff_table(TM2Context *ctx, TM2Codes *code)
{
    TM2Huff huff;
    int res = 0;

    huff.val_bits = get_bits(&ctx->gb, 5);
    huff.max_bits = get_bits(&ctx->gb, 5);
    huff.min_bits = get_bits(&ctx->gb, 5);
    huff.nodes = get_bits_long(&ctx->gb, 17);
    huff.num = 0;


    if ((huff.val_bits < 1) || (huff.val_bits > 32) ||
        (huff.max_bits < 0) || (huff.max_bits > 25)) {
        av_log(ctx->avctx, AV_LOG_ERROR, "Incorrect tree parameters - literal "
               "length: %i, max code length: %i\n", huff.val_bits, huff.max_bits);
        return AVERROR_INVALIDDATA;
    }
    if ((huff.nodes <= 0) || (huff.nodes > 0x10000)) {
        av_log(ctx->avctx, AV_LOG_ERROR, "Incorrect number of Huffman tree "
               "nodes: %i\n", huff.nodes);
        return AVERROR_INVALIDDATA;
    }

    if (huff.max_bits == 0)
        huff.max_bits = 1;


    huff.max_num = (huff.nodes + 1) >> 1;
    huff.nums = av_calloc(huff.max_num, sizeof(int));
    huff.bits = av_calloc(huff.max_num, sizeof(uint32_t));
    huff.lens = av_calloc(huff.max_num, sizeof(int));

    if (!huff.nums || !huff.bits || !huff.lens) {
        res = AVERROR(ENOMEM);
        goto out;
    }

    res = tm2_read_tree(ctx, 0, 0, &huff);

    if (res >= 0 && res != huff.max_bits) {
        av_log(ctx->avctx, AV_LOG_ERROR, "Got less bits than expected: %i of %i\n",
               res, huff.max_bits);
        res = AVERROR_INVALIDDATA;
    }
    if (huff.num != huff.max_num) {
        av_log(ctx->avctx, AV_LOG_ERROR, "Got less codes than expected: %i of %i\n",
               huff.num, huff.max_num);
        res = AVERROR_INVALIDDATA;
    }


    if (res >= 0) {
        int i;

        res = init_vlc(&code->vlc, huff.max_bits, huff.max_num,
                       huff.lens, sizeof(int), sizeof(int),
                       huff.bits, sizeof(uint32_t), sizeof(uint32_t), 0);
        if (res < 0)
            av_log(ctx->avctx, AV_LOG_ERROR, "Cannot build VLC table\n");
        else {
            code->bits = huff.max_bits;
            code->length = huff.max_num;
            code->recode = av_malloc_array(code->length, sizeof(int));
            if (!code->recode) {
                res = AVERROR(ENOMEM);
                goto out;
            }
            for (i = 0; i < code->length; i++)
                code->recode[i] = huff.nums[i];
        }
    }

out:

    av_free(huff.nums);
    av_free(huff.bits);
    av_free(huff.lens);

    return res;
}
