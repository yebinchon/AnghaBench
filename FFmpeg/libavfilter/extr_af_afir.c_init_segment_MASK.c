#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int channels; } ;
struct TYPE_9__ {TYPE_6__** inputs; TYPE_2__* priv; } ;
struct TYPE_8__ {int min_part_size; } ;
struct TYPE_7__ {int fft_length; int part_size; int block_size; int coeff_size; int nb_partitions; int input_size; int input_offset; void* output; void* input; void* coeff; void* block; void* sum; void* buffer; void** irdft; void** rdft; void* output_offset; void* part_index; } ;
typedef  TYPE_1__ AudioFIRSegment ;
typedef  TYPE_2__ AudioFIRContext ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DFT_R2C ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  IDFT_C2R ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (TYPE_6__*,int) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx, AudioFIRSegment *seg,
                        int offset, int nb_partitions, int part_size)
{
    AudioFIRContext *s = ctx->priv;

    seg->rdft  = FUNC2(ctx->inputs[0]->channels, sizeof(*seg->rdft));
    seg->irdft = FUNC2(ctx->inputs[0]->channels, sizeof(*seg->irdft));
    if (!seg->rdft || !seg->irdft)
        return FUNC0(ENOMEM);

    seg->fft_length    = part_size * 2 + 1;
    seg->part_size     = part_size;
    seg->block_size    = FUNC1(seg->fft_length, 32);
    seg->coeff_size    = FUNC1(seg->part_size + 1, 32);
    seg->nb_partitions = nb_partitions;
    seg->input_size    = offset + s->min_part_size;
    seg->input_offset  = offset;

    seg->part_index    = FUNC2(ctx->inputs[0]->channels, sizeof(*seg->part_index));
    seg->output_offset = FUNC2(ctx->inputs[0]->channels, sizeof(*seg->output_offset));
    if (!seg->part_index || !seg->output_offset)
        return FUNC0(ENOMEM);

    for (int ch = 0; ch < ctx->inputs[0]->channels; ch++) {
        seg->rdft[ch]  = FUNC4(FUNC3(2 * part_size), DFT_R2C);
        seg->irdft[ch] = FUNC4(FUNC3(2 * part_size), IDFT_C2R);
        if (!seg->rdft[ch] || !seg->irdft[ch])
            return FUNC0(ENOMEM);
    }

    seg->sum    = FUNC5(ctx->inputs[0], seg->fft_length);
    seg->block  = FUNC5(ctx->inputs[0], seg->nb_partitions * seg->block_size);
    seg->buffer = FUNC5(ctx->inputs[0], seg->part_size);
    seg->coeff  = FUNC5(ctx->inputs[1], seg->nb_partitions * seg->coeff_size * 2);
    seg->input  = FUNC5(ctx->inputs[0], seg->input_size);
    seg->output = FUNC5(ctx->inputs[0], seg->part_size);
    if (!seg->buffer || !seg->sum || !seg->block || !seg->coeff || !seg->input || !seg->output)
        return FUNC0(ENOMEM);

    return 0;
}