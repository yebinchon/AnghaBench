#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* preview; int /*<<< orphan*/  builder; } ;
typedef  TYPE_2__ signal_user_data_t ;
typedef  scalar_t__ gboolean ;
struct TYPE_5__ {int live_id; size_t encode_frame; size_t frame; int /*<<< orphan*/ * encoded; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void
FUNC7(signal_user_data_t *ud, gboolean success)
{
    GtkWidget *widget;
    GtkWidget *prog;

    ud->preview->live_id = -1;
    prog = FUNC0(ud->builder, "live_encode_progress");
    if (success &&
        ud->preview->encode_frame == ud->preview->frame)
    {
        FUNC3(FUNC1(prog), "Done");
        FUNC2 (FUNC1(prog), 1);
        ud->preview->encoded[ud->preview->encode_frame] = TRUE;
#if defined(_ENABLE_GST)
        live_preview_start(ud);
#endif
        widget = FUNC0(ud->builder, "live_progress_box");
        FUNC4 (widget);
        widget = FUNC0(ud->builder, "live_preview_progress");
        FUNC5 (widget);
    }
    else
    {
        FUNC3(FUNC1(prog), "");
        FUNC2 (FUNC1(prog), 0);
        ud->preview->encoded[ud->preview->encode_frame] = FALSE;
    }
}