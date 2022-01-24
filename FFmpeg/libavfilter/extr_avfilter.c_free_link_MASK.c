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
struct TYPE_8__ {size_t srcpad; size_t dstpad; int /*<<< orphan*/  out_channel_layouts; int /*<<< orphan*/  in_channel_layouts; int /*<<< orphan*/  out_samplerates; int /*<<< orphan*/  in_samplerates; int /*<<< orphan*/  out_formats; int /*<<< orphan*/  in_formats; int /*<<< orphan*/  hw_frames_ctx; TYPE_2__* dst; TYPE_1__* src; } ;
struct TYPE_7__ {size_t input_pads; int /*<<< orphan*/ ** inputs; } ;
struct TYPE_6__ {size_t output_pads; int /*<<< orphan*/ ** outputs; } ;
typedef  TYPE_3__ AVFilterLink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(AVFilterLink *link)
{
    if (!link)
        return;

    if (link->src)
        link->src->outputs[link->srcpad - link->src->output_pads] = NULL;
    if (link->dst)
        link->dst->inputs[link->dstpad - link->dst->input_pads] = NULL;

    FUNC0(&link->hw_frames_ctx);

    FUNC3(&link->in_formats);
    FUNC3(&link->out_formats);
    FUNC3(&link->in_samplerates);
    FUNC3(&link->out_samplerates);
    FUNC2(&link->in_channel_layouts);
    FUNC2(&link->out_channel_layouts);
    FUNC1(&link);
}