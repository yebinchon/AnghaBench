
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_19__ ;


typedef int uint8_t ;
struct TYPE_23__ {int * linesize; int ** data; } ;
struct TYPE_22__ {int* tok_lens; int* Y2; int* Y1; int* U2; int* U1; int* V2; int* V1; int y_stride; int uv_stride; scalar_t__ cur; scalar_t__ error; TYPE_19__* avctx; int CD; int D; int clast; int last; scalar_t__* tok_ptrs; } ;
struct TYPE_21__ {int width; int height; } ;
typedef TYPE_1__ TM2Context ;
typedef TYPE_2__ AVFrame ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int GET_TOK (TYPE_1__*,size_t) ;





 int TM2_NUM_STREAMS ;

 size_t TM2_TYPE ;

 int av_clip_uint8 (unsigned int) ;
 int av_log (TYPE_19__*,int ,char*,int,...) ;
 int memcpy (int*,int*,int) ;
 int memset (int ,int ,int) ;
 int tm2_hi_res_block (TYPE_1__*,TYPE_2__*,int,int) ;
 int tm2_low_res_block (TYPE_1__*,TYPE_2__*,int,int) ;
 int tm2_med_res_block (TYPE_1__*,TYPE_2__*,int,int) ;
 int tm2_motion_block (TYPE_1__*,TYPE_2__*,int,int) ;
 int tm2_null_res_block (TYPE_1__*,TYPE_2__*,int,int) ;
 int tm2_still_block (TYPE_1__*,TYPE_2__*,int,int) ;
 int tm2_update_block (TYPE_1__*,TYPE_2__*,int,int) ;

__attribute__((used)) static int tm2_decode_blocks(TM2Context *ctx, AVFrame *p)
{
    int i, j;
    int w = ctx->avctx->width, h = ctx->avctx->height, bw = w >> 2, bh = h >> 2, cw = w >> 1;
    int type;
    int keyframe = 1;
    int *Y, *U, *V;
    uint8_t *dst;

    for (i = 0; i < TM2_NUM_STREAMS; i++)
        ctx->tok_ptrs[i] = 0;

    if (ctx->tok_lens[TM2_TYPE]<bw*bh) {
        av_log(ctx->avctx,AV_LOG_ERROR,"Got %i tokens for %i blocks\n",ctx->tok_lens[TM2_TYPE],bw*bh);
        return AVERROR_INVALIDDATA;
    }

    memset(ctx->last, 0, 4 * bw * sizeof(int));
    memset(ctx->clast, 0, 4 * bw * sizeof(int));

    for (j = 0; j < bh; j++) {
        memset(ctx->D, 0, 4 * sizeof(int));
        memset(ctx->CD, 0, 4 * sizeof(int));
        for (i = 0; i < bw; i++) {
            type = GET_TOK(ctx, TM2_TYPE);
            switch(type) {
            case 134:
                tm2_hi_res_block(ctx, p, i, j);
                break;
            case 132:
                tm2_med_res_block(ctx, p, i, j);
                break;
            case 133:
                tm2_low_res_block(ctx, p, i, j);
                break;
            case 130:
                tm2_null_res_block(ctx, p, i, j);
                break;
            case 128:
                tm2_update_block(ctx, p, i, j);
                keyframe = 0;
                break;
            case 129:
                tm2_still_block(ctx, p, i, j);
                keyframe = 0;
                break;
            case 131:
                tm2_motion_block(ctx, p, i, j);
                keyframe = 0;
                break;
            default:
                av_log(ctx->avctx, AV_LOG_ERROR, "Skipping unknown block type %i\n", type);
            }
            if (ctx->error)
                return AVERROR_INVALIDDATA;
        }
    }


    Y = (ctx->cur?ctx->Y2:ctx->Y1);
    U = (ctx->cur?ctx->U2:ctx->U1);
    V = (ctx->cur?ctx->V2:ctx->V1);
    dst = p->data[0];
    for (j = 0; j < h; j++) {
        for (i = 0; i < w; i++) {
            unsigned y = Y[i], u = U[i >> 1], v = V[i >> 1];
            dst[3*i+0] = av_clip_uint8(y + v);
            dst[3*i+1] = av_clip_uint8(y);
            dst[3*i+2] = av_clip_uint8(y + u);
        }


        Y[-4] = Y[-3] = Y[-2] = Y[-1] = Y[0];
        Y[w + 3] = Y[w + 2] = Y[w + 1] = Y[w] = Y[w - 1];


        if (j == 0) {
            memcpy(Y - 4 - 1 * ctx->y_stride, Y - 4, ctx->y_stride);
            memcpy(Y - 4 - 2 * ctx->y_stride, Y - 4, ctx->y_stride);
            memcpy(Y - 4 - 3 * ctx->y_stride, Y - 4, ctx->y_stride);
            memcpy(Y - 4 - 4 * ctx->y_stride, Y - 4, ctx->y_stride);
        } else if (j == h - 1) {
            memcpy(Y - 4 + 1 * ctx->y_stride, Y - 4, ctx->y_stride);
            memcpy(Y - 4 + 2 * ctx->y_stride, Y - 4, ctx->y_stride);
            memcpy(Y - 4 + 3 * ctx->y_stride, Y - 4, ctx->y_stride);
            memcpy(Y - 4 + 4 * ctx->y_stride, Y - 4, ctx->y_stride);
        }

        Y += ctx->y_stride;
        if (j & 1) {

            U[-2] = U[-1] = U[0];
            V[-2] = V[-1] = V[0];
            U[cw + 1] = U[cw] = U[cw - 1];
            V[cw + 1] = V[cw] = V[cw - 1];


            if (j == 1) {
                memcpy(U - 2 - 1 * ctx->uv_stride, U - 2, ctx->uv_stride);
                memcpy(V - 2 - 1 * ctx->uv_stride, V - 2, ctx->uv_stride);
                memcpy(U - 2 - 2 * ctx->uv_stride, U - 2, ctx->uv_stride);
                memcpy(V - 2 - 2 * ctx->uv_stride, V - 2, ctx->uv_stride);
            } else if (j == h - 1) {
                memcpy(U - 2 + 1 * ctx->uv_stride, U - 2, ctx->uv_stride);
                memcpy(V - 2 + 1 * ctx->uv_stride, V - 2, ctx->uv_stride);
                memcpy(U - 2 + 2 * ctx->uv_stride, U - 2, ctx->uv_stride);
                memcpy(V - 2 + 2 * ctx->uv_stride, V - 2, ctx->uv_stride);
            }

            U += ctx->uv_stride;
            V += ctx->uv_stride;
        }
        dst += p->linesize[0];
    }

    return keyframe;
}
