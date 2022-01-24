#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ color_range; scalar_t__ colorspace; scalar_t__ color_primaries; scalar_t__ color_trc; } ;
typedef  TYPE_1__ AVFrame ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 scalar_t__ AVCOL_PRI_UNSPECIFIED ; 
 scalar_t__ AVCOL_RANGE_UNSPECIFIED ; 
 scalar_t__ AVCOL_SPC_UNSPECIFIED ; 
 scalar_t__ AVCOL_TRC_UNSPECIFIED ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 char* FUNC0 (scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 char* FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC5(AVFilterContext *ctx, AVFrame *frame)
{
    const char *color_range_str     = FUNC1(frame->color_range);
    const char *colorspace_str      = FUNC2(frame->colorspace);
    const char *color_primaries_str = FUNC0(frame->color_primaries);
    const char *color_trc_str       = FUNC3(frame->color_trc);

    if (!color_range_str || frame->color_range == AVCOL_RANGE_UNSPECIFIED) {
        FUNC4(ctx, AV_LOG_INFO, "color_range:unknown");
    } else {
        FUNC4(ctx, AV_LOG_INFO, "color_range:%s", color_range_str);
    }

    if (!colorspace_str || frame->colorspace == AVCOL_SPC_UNSPECIFIED) {
        FUNC4(ctx, AV_LOG_INFO, " color_space:unknown");
    } else {
        FUNC4(ctx, AV_LOG_INFO, " color_space:%s", colorspace_str);
    }

    if (!color_primaries_str || frame->color_primaries == AVCOL_PRI_UNSPECIFIED) {
        FUNC4(ctx, AV_LOG_INFO, " color_primaries:unknown");
    } else {
        FUNC4(ctx, AV_LOG_INFO, " color_primaries:%s", color_primaries_str);
    }

    if (!color_trc_str || frame->color_trc == AVCOL_TRC_UNSPECIFIED) {
        FUNC4(ctx, AV_LOG_INFO, " color_trc:unknown");
    } else {
        FUNC4(ctx, AV_LOG_INFO, " color_trc:%s", color_trc_str);
    }
    FUNC4(ctx, AV_LOG_INFO, "\n");
}