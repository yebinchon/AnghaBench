#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  size; int /*<<< orphan*/  entry_point_offset; } ;
struct TYPE_5__ {int /*<<< orphan*/  rpl_tab_pool; int /*<<< orphan*/  tab_mvf_pool; TYPE_1__ sh; int /*<<< orphan*/  vertical_bs; int /*<<< orphan*/  horizontal_bs; int /*<<< orphan*/  filter_slice_edges; int /*<<< orphan*/  tab_slice_address; int /*<<< orphan*/  qp_y_tab; int /*<<< orphan*/  is_pcm; int /*<<< orphan*/  cbf_luma; int /*<<< orphan*/  tab_ipm; int /*<<< orphan*/  tab_ct_depth; int /*<<< orphan*/  skip_flag; int /*<<< orphan*/  deblock; int /*<<< orphan*/  sao; } ;
typedef  TYPE_2__ HEVCContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(HEVCContext *s)
{
    FUNC1(&s->sao);
    FUNC1(&s->deblock);

    FUNC1(&s->skip_flag);
    FUNC1(&s->tab_ct_depth);

    FUNC1(&s->tab_ipm);
    FUNC1(&s->cbf_luma);
    FUNC1(&s->is_pcm);

    FUNC1(&s->qp_y_tab);
    FUNC1(&s->tab_slice_address);
    FUNC1(&s->filter_slice_edges);

    FUNC1(&s->horizontal_bs);
    FUNC1(&s->vertical_bs);

    FUNC1(&s->sh.entry_point_offset);
    FUNC1(&s->sh.size);
    FUNC1(&s->sh.offset);

    FUNC0(&s->tab_mvf_pool);
    FUNC0(&s->rpl_tab_pool);
}