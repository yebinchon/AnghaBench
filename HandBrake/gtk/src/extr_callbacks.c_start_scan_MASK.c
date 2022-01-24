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
struct TYPE_7__ {int /*<<< orphan*/  prefs; int /*<<< orphan*/  builder; } ;
typedef  TYPE_2__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gint ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_8__ {TYPE_1__ scan; } ;
typedef  TYPE_3__ ghb_status_t ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GHB_STATE_IDLE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 long FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(
    signal_user_data_t *ud,
    const gchar *path,
    gint title_id,
    gint preview_count)
{
    GtkWidget *widget;
    ghb_status_t status;

    FUNC6(&status);
    if (status.scan.state != GHB_STATE_IDLE)
        return;

    widget = FUNC0(ud->builder, "sourcetoolbutton");
    FUNC7(FUNC1(widget), "hb-stop");
    FUNC8(FUNC1(widget), FUNC3("Stop Scan"));
    FUNC9(FUNC2(widget), FUNC3("Stop Scan"));

    widget = FUNC0(ud->builder, "source_open");
    FUNC10(widget, FALSE);
    widget = FUNC0(ud->builder, "source_title_open");
    FUNC10(widget, FALSE);
    FUNC4(path, title_id, preview_count,
            90000L * FUNC5(ud->prefs, "MinTitleDuration"));
}