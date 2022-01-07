
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int* recode1; int* recode2; int* escapes; scalar_t__* last; TYPE_2__* v2; TYPE_1__* v1; } ;
struct TYPE_9__ {scalar_t__ current; scalar_t__ length; int* values; } ;
struct TYPE_8__ {scalar_t__ table; } ;
struct TYPE_7__ {scalar_t__ table; } ;
typedef TYPE_3__ HuffContext ;
typedef int GetBitContext ;
typedef TYPE_4__ DBCtx ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int SMKTREE_BITS ;
 int SMKTREE_DECODE_BIG_MAX_RECURSION ;
 int SMK_NODE ;
 int av_log (int *,int ,char*) ;
 int get_bits1 (int *) ;
 int get_vlc2 (int *,scalar_t__,int ,int) ;

__attribute__((used)) static int smacker_decode_bigtree(GetBitContext *gb, HuffContext *hc,
                                  DBCtx *ctx, int length)
{

    if (length > SMKTREE_DECODE_BIG_MAX_RECURSION) {
        av_log(((void*)0), AV_LOG_ERROR, "Maximum bigtree recursion level exceeded.\n");
        return AVERROR_INVALIDDATA;
    }

    if (hc->current + 1 >= hc->length) {
        av_log(((void*)0), AV_LOG_ERROR, "Tree size exceeded!\n");
        return AVERROR_INVALIDDATA;
    }
    if(!get_bits1(gb)){
        int val, i1, i2;
        i1 = ctx->v1->table ? get_vlc2(gb, ctx->v1->table, SMKTREE_BITS, 3) : 0;
        i2 = ctx->v2->table ? get_vlc2(gb, ctx->v2->table, SMKTREE_BITS, 3) : 0;
        if (i1 < 0 || i2 < 0)
            return AVERROR_INVALIDDATA;
        val = ctx->recode1[i1] | (ctx->recode2[i2] << 8);
        if(val == ctx->escapes[0]) {
            ctx->last[0] = hc->current;
            val = 0;
        } else if(val == ctx->escapes[1]) {
            ctx->last[1] = hc->current;
            val = 0;
        } else if(val == ctx->escapes[2]) {
            ctx->last[2] = hc->current;
            val = 0;
        }

        hc->values[hc->current++] = val;
        return 1;
    } else {
        int r = 0, r_new, t;

        t = hc->current++;
        r = smacker_decode_bigtree(gb, hc, ctx, length + 1);
        if(r < 0)
            return r;
        hc->values[t] = SMK_NODE | r;
        r++;
        r_new = smacker_decode_bigtree(gb, hc, ctx, length + 1);
        if (r_new < 0)
            return r_new;
        return r + r_new;
    }
}
