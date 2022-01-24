#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_19__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_23__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ ** data; } ;
struct TYPE_22__ {int* tok_lens; int* Y2; int* Y1; int* U2; int* U1; int* V2; int* V1; int y_stride; int uv_stride; scalar_t__ cur; scalar_t__ error; TYPE_19__* avctx; int /*<<< orphan*/  CD; int /*<<< orphan*/  D; int /*<<< orphan*/  clast; int /*<<< orphan*/  last; scalar_t__* tok_ptrs; } ;
struct TYPE_21__ {int width; int height; } ;
typedef  TYPE_1__ TM2Context ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (TYPE_1__*,size_t) ; 
#define  TM2_HI_RES 134 
#define  TM2_LOW_RES 133 
#define  TM2_MED_RES 132 
#define  TM2_MOTION 131 
#define  TM2_NULL_RES 130 
 int TM2_NUM_STREAMS ; 
#define  TM2_STILL 129 
 size_t TM2_TYPE ; 
#define  TM2_UPDATE 128 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_19__*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_2__*,int,int) ; 

__attribute__((used)) static int FUNC12(TM2Context *ctx, AVFrame *p)
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
        FUNC2(ctx->avctx,AV_LOG_ERROR,"Got %i tokens for %i blocks\n",ctx->tok_lens[TM2_TYPE],bw*bh);
        return AVERROR_INVALIDDATA;
    }

    FUNC4(ctx->last, 0, 4 * bw * sizeof(int));
    FUNC4(ctx->clast, 0, 4 * bw * sizeof(int));

    for (j = 0; j < bh; j++) {
        FUNC4(ctx->D, 0, 4 * sizeof(int));
        FUNC4(ctx->CD, 0, 4 * sizeof(int));
        for (i = 0; i < bw; i++) {
            type = FUNC0(ctx, TM2_TYPE);
            switch(type) {
            case TM2_HI_RES:
                FUNC5(ctx, p, i, j);
                break;
            case TM2_MED_RES:
                FUNC7(ctx, p, i, j);
                break;
            case TM2_LOW_RES:
                FUNC6(ctx, p, i, j);
                break;
            case TM2_NULL_RES:
                FUNC9(ctx, p, i, j);
                break;
            case TM2_UPDATE:
                FUNC11(ctx, p, i, j);
                keyframe = 0;
                break;
            case TM2_STILL:
                FUNC10(ctx, p, i, j);
                keyframe = 0;
                break;
            case TM2_MOTION:
                FUNC8(ctx, p, i, j);
                keyframe = 0;
                break;
            default:
                FUNC2(ctx->avctx, AV_LOG_ERROR, "Skipping unknown block type %i\n", type);
            }
            if (ctx->error)
                return AVERROR_INVALIDDATA;
        }
    }

    /* copy data from our buffer to AVFrame */
    Y = (ctx->cur?ctx->Y2:ctx->Y1);
    U = (ctx->cur?ctx->U2:ctx->U1);
    V = (ctx->cur?ctx->V2:ctx->V1);
    dst = p->data[0];
    for (j = 0; j < h; j++) {
        for (i = 0; i < w; i++) {
            unsigned y = Y[i], u = U[i >> 1], v = V[i >> 1];
            dst[3*i+0] = FUNC1(y + v);
            dst[3*i+1] = FUNC1(y);
            dst[3*i+2] = FUNC1(y + u);
        }

        /* horizontal edge extension */
        Y[-4]    = Y[-3]    = Y[-2]    = Y[-1] = Y[0];
        Y[w + 3] = Y[w + 2] = Y[w + 1] = Y[w]  = Y[w - 1];

        /* vertical edge extension */
        if (j == 0) {
            FUNC3(Y - 4 - 1 * ctx->y_stride, Y - 4, ctx->y_stride);
            FUNC3(Y - 4 - 2 * ctx->y_stride, Y - 4, ctx->y_stride);
            FUNC3(Y - 4 - 3 * ctx->y_stride, Y - 4, ctx->y_stride);
            FUNC3(Y - 4 - 4 * ctx->y_stride, Y - 4, ctx->y_stride);
        } else if (j == h - 1) {
            FUNC3(Y - 4 + 1 * ctx->y_stride, Y - 4, ctx->y_stride);
            FUNC3(Y - 4 + 2 * ctx->y_stride, Y - 4, ctx->y_stride);
            FUNC3(Y - 4 + 3 * ctx->y_stride, Y - 4, ctx->y_stride);
            FUNC3(Y - 4 + 4 * ctx->y_stride, Y - 4, ctx->y_stride);
        }

        Y += ctx->y_stride;
        if (j & 1) {
            /* horizontal edge extension */
            U[-2]     = U[-1] = U[0];
            V[-2]     = V[-1] = V[0];
            U[cw + 1] = U[cw] = U[cw - 1];
            V[cw + 1] = V[cw] = V[cw - 1];

            /* vertical edge extension */
            if (j == 1) {
                FUNC3(U - 2 - 1 * ctx->uv_stride, U - 2, ctx->uv_stride);
                FUNC3(V - 2 - 1 * ctx->uv_stride, V - 2, ctx->uv_stride);
                FUNC3(U - 2 - 2 * ctx->uv_stride, U - 2, ctx->uv_stride);
                FUNC3(V - 2 - 2 * ctx->uv_stride, V - 2, ctx->uv_stride);
            } else if (j == h - 1) {
                FUNC3(U - 2 + 1 * ctx->uv_stride, U - 2, ctx->uv_stride);
                FUNC3(V - 2 + 1 * ctx->uv_stride, V - 2, ctx->uv_stride);
                FUNC3(U - 2 + 2 * ctx->uv_stride, U - 2, ctx->uv_stride);
                FUNC3(V - 2 + 2 * ctx->uv_stride, V - 2, ctx->uv_stride);
            }

            U += ctx->uv_stride;
            V += ctx->uv_stride;
        }
        dst += p->linesize[0];
    }

    return keyframe;
}