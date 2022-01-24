#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {int nb_channels; } ;
struct TYPE_6__ {scalar_t__ input_size; int /*<<< orphan*/  output; int /*<<< orphan*/  input; int /*<<< orphan*/  coeff; int /*<<< orphan*/  buffer; int /*<<< orphan*/  sum; int /*<<< orphan*/  block; int /*<<< orphan*/ * part_index; int /*<<< orphan*/ * output_offset; int /*<<< orphan*/ * irdft; int /*<<< orphan*/ * rdft; } ;
typedef  TYPE_1__ AudioFIRSegment ;
typedef  TYPE_2__ AudioFIRContext ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(AVFilterContext *ctx, AudioFIRSegment *seg)
{
    AudioFIRContext *s = ctx->priv;

    if (seg->rdft) {
        for (int ch = 0; ch < s->nb_channels; ch++) {
            FUNC2(seg->rdft[ch]);
        }
    }
    FUNC1(&seg->rdft);

    if (seg->irdft) {
        for (int ch = 0; ch < s->nb_channels; ch++) {
            FUNC2(seg->irdft[ch]);
        }
    }
    FUNC1(&seg->irdft);

    FUNC1(&seg->output_offset);
    FUNC1(&seg->part_index);

    FUNC0(&seg->block);
    FUNC0(&seg->sum);
    FUNC0(&seg->buffer);
    FUNC0(&seg->coeff);
    FUNC0(&seg->input);
    FUNC0(&seg->output);
    seg->input_size = 0;
}