
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* tok_ptrs; size_t* tok_lens; int error; size_t** tokens; int** deltas; int avctx; } ;
typedef TYPE_1__ TM2Context ;


 int AV_LOG_ERROR ;
 size_t TM2_DELTAS ;
 int TM2_MOT ;
 int av_log (int ,int ,char*,size_t,...) ;

__attribute__((used)) static inline int GET_TOK(TM2Context *ctx,int type)
{
    if (ctx->tok_ptrs[type] >= ctx->tok_lens[type]) {
        av_log(ctx->avctx, AV_LOG_ERROR, "Read token from stream %i out of bounds (%i>=%i)\n", type, ctx->tok_ptrs[type], ctx->tok_lens[type]);
        ctx->error = 1;
        return 0;
    }
    if (type <= TM2_MOT) {
        if (ctx->tokens[type][ctx->tok_ptrs[type]] >= TM2_DELTAS) {
            av_log(ctx->avctx, AV_LOG_ERROR, "token %d is too large\n", ctx->tokens[type][ctx->tok_ptrs[type]]);
            return 0;
        }
        return ctx->deltas[type][ctx->tokens[type][ctx->tok_ptrs[type]++]];
    }
    return ctx->tokens[type][ctx->tok_ptrs[type]++];
}
