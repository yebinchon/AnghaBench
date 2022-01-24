#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_12__ {int coding_mode; } ;
struct TYPE_9__ {int lpc_coeff_precision; int /*<<< orphan*/  exact_rice_parameters; int /*<<< orphan*/  max_partition_order; int /*<<< orphan*/  min_partition_order; } ;
struct TYPE_8__ {int /*<<< orphan*/  blocksize; } ;
struct TYPE_11__ {TYPE_2__ options; TYPE_1__ frame; } ;
struct TYPE_10__ {int obits; scalar_t__ type; int /*<<< orphan*/  residual; int /*<<< orphan*/  rc_sums; int /*<<< orphan*/  rc_udata; TYPE_7__ rc; } ;
typedef  TYPE_3__ FlacSubframe ;
typedef  TYPE_4__ FlacEncodeContext ;

/* Variables and functions */
 scalar_t__ FLAC_SUBFRAME_LPC ; 
 scalar_t__ FUNC0 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint64_t FUNC2(FlacEncodeContext *s,
                                          FlacSubframe *sub, int pred_order)
{
    int pmin = FUNC1(s->options.min_partition_order,
                               s->frame.blocksize, pred_order);
    int pmax = FUNC1(s->options.max_partition_order,
                               s->frame.blocksize, pred_order);

    uint64_t bits = 8 + pred_order * sub->obits + 2 + sub->rc.coding_mode;
    if (sub->type == FLAC_SUBFRAME_LPC)
        bits += 4 + 5 + pred_order * s->options.lpc_coeff_precision;
    bits += FUNC0(&sub->rc, sub->rc_udata, sub->rc_sums, pmin, pmax, sub->residual,
                             s->frame.blocksize, pred_order, s->options.exact_rice_parameters);
    return bits;
}