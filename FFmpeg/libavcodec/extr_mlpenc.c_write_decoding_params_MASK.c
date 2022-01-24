#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int codebook; int huff_lsbs; int /*<<< orphan*/  huff_offset; } ;
struct TYPE_10__ {int /*<<< orphan*/ * shift; } ;
struct TYPE_12__ {int param_presence_flags; int blocksize; int* quant_step_size; TYPE_2__ matrix_params; } ;
struct TYPE_11__ {TYPE_5__* cur_channel_params; TYPE_1__* cur_restart_header; TYPE_4__* cur_decoding_params; } ;
struct TYPE_9__ {unsigned int max_matrix_channel; unsigned int max_channel; unsigned int min_channel; } ;
typedef  TYPE_1__ RestartHeader ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_2__ MatrixParams ;
typedef  TYPE_3__ MLPEncodeContext ;
typedef  TYPE_4__ DecodingParams ;
typedef  TYPE_5__ ChannelParams ;

/* Variables and functions */
 int /*<<< orphan*/  FIR ; 
 int /*<<< orphan*/  IIR ; 
 int PARAMS_DEFAULT ; 
 int PARAM_BLOCKSIZE ; 
 int PARAM_FIR ; 
 int PARAM_HUFFOFFSET ; 
 int PARAM_IIR ; 
 int PARAM_MATRIX ; 
 int PARAM_OUTSHIFT ; 
 int PARAM_PRESENCE_FLAGS ; 
 int PARAM_QUANTSTEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(MLPEncodeContext *ctx, PutBitContext *pb,
                                  int params_changed)
{
    DecodingParams *dp = ctx->cur_decoding_params;
    RestartHeader  *rh = ctx->cur_restart_header;
    MatrixParams *mp = &dp->matrix_params;
    unsigned int ch;

    if (dp->param_presence_flags != PARAMS_DEFAULT &&
        params_changed & PARAM_PRESENCE_FLAGS) {
        FUNC0(pb, 1, 1);
        FUNC0(pb, 8, dp->param_presence_flags);
    } else {
        FUNC0(pb, 1, 0);
    }

    if (dp->param_presence_flags & PARAM_BLOCKSIZE) {
        if (params_changed       & PARAM_BLOCKSIZE) {
            FUNC0(pb, 1, 1);
            FUNC0(pb, 9, dp->blocksize);
        } else {
            FUNC0(pb, 1, 0);
        }
    }

    if (dp->param_presence_flags & PARAM_MATRIX) {
        if (params_changed       & PARAM_MATRIX) {
            FUNC0(pb, 1, 1);
            FUNC3(ctx, pb);
        } else {
            FUNC0(pb, 1, 0);
        }
    }

    if (dp->param_presence_flags & PARAM_OUTSHIFT) {
        if (params_changed       & PARAM_OUTSHIFT) {
            FUNC0(pb, 1, 1);
            for (ch = 0; ch <= rh->max_matrix_channel; ch++)
                FUNC1(pb, 4, mp->shift[ch]);
        } else {
            FUNC0(pb, 1, 0);
        }
    }

    if (dp->param_presence_flags & PARAM_QUANTSTEP) {
        if (params_changed       & PARAM_QUANTSTEP) {
            FUNC0(pb, 1, 1);
            for (ch = 0; ch <= rh->max_channel; ch++)
                FUNC0(pb, 4, dp->quant_step_size[ch]);
        } else {
            FUNC0(pb, 1, 0);
        }
    }

    for (ch = rh->min_channel; ch <= rh->max_channel; ch++) {
        ChannelParams *cp = &ctx->cur_channel_params[ch];

        if (dp->param_presence_flags & 0xF) {
            FUNC0(pb, 1, 1);

            if (dp->param_presence_flags & PARAM_FIR) {
                if (params_changed       & PARAM_FIR) {
                    FUNC0(pb, 1, 1);
                    FUNC2(ctx, pb, ch, FIR);
                } else {
                    FUNC0(pb, 1, 0);
                }
            }

            if (dp->param_presence_flags & PARAM_IIR) {
                if (params_changed       & PARAM_IIR) {
                    FUNC0(pb, 1, 1);
                    FUNC2(ctx, pb, ch, IIR);
                } else {
                    FUNC0(pb, 1, 0);
                }
            }

            if (dp->param_presence_flags & PARAM_HUFFOFFSET) {
                if (params_changed       & PARAM_HUFFOFFSET) {
                    FUNC0 (pb,  1, 1);
                    FUNC1(pb, 15, cp->huff_offset);
                } else {
                    FUNC0(pb, 1, 0);
                }
            }

            FUNC0(pb, 2, cp->codebook );
            FUNC0(pb, 5, cp->huff_lsbs);
        } else {
            FUNC0(pb, 1, 0);
        }
    }
}