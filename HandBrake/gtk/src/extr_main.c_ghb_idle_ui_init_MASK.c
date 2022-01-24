#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  globals; int /*<<< orphan*/  prefs; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GSourceFunc ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HB_PRESET_TYPE_ALL ; 
 int /*<<< orphan*/ * arg_preset ; 
 int /*<<< orphan*/ * dvd_device ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ ghb_idle_scan ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

gboolean
FUNC9(signal_user_data_t *ud)
{
    FUNC7(ud, ud->globals);
    FUNC7(ud, ud->prefs);
    // Note that ghb_settings_to_ui(ud->settings) happens when initial
    // empty title is initialized.

    // Init settings that are dependent on command line args
    if (dvd_device != NULL)
    {
        // Source overridden from command line option
        FUNC4(ud->globals, "scan_source", dvd_device);
        FUNC0((GSourceFunc)ghb_idle_scan, ud);
    }
    else
    {
        GhbValue *gval = FUNC2(ud->prefs, "default_source");
        FUNC3(ud->globals, "scan_source", FUNC8(gval));
    }

    if (arg_preset != NULL)
    {
        FUNC6(ud, arg_preset, HB_PRESET_TYPE_ALL);
    }
    else
    {
        FUNC5(ud);
    }

    // Grey out widgets that are dependent on a disabled feature
    FUNC1(ud);

    return FALSE;
}