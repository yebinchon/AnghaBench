#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  pad_idx; TYPE_1__* filter_ctx; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; int /*<<< orphan*/  ost; } ;
struct TYPE_10__ {int /*<<< orphan*/  output_pads; } ;
typedef  TYPE_2__ OutputFilter ;
typedef  int /*<<< orphan*/  FilterGraph ;
typedef  TYPE_3__ AVFilterInOut ;

/* Variables and functions */
#define  AVMEDIA_TYPE_AUDIO 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(FilterGraph *fg, OutputFilter *ofilter, AVFilterInOut *out)
{
    if (!ofilter->ost) {
        FUNC1(NULL, AV_LOG_FATAL, "Filter %s has an unconnected output\n", ofilter->name);
        FUNC5(1);
    }

    switch (FUNC2(out->filter_ctx->output_pads, out->pad_idx)) {
    case AVMEDIA_TYPE_VIDEO: return FUNC4(fg, ofilter, out);
    case AVMEDIA_TYPE_AUDIO: return FUNC3(fg, ofilter, out);
    default: FUNC0(0);
    }
}