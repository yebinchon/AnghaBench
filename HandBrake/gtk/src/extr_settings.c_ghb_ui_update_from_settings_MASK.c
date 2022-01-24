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
struct TYPE_3__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(signal_user_data_t *ud, const gchar *name, const GhbValue *settings)
{
    GObject *object;
    GhbValue * value;

    FUNC1("ghb_ui_update_from_settings() %s", name);
    if (name == NULL)
        return 0;
    value = FUNC2(settings, name);
    if (value == NULL)
        return 0;
    object = FUNC0(ud->builder, name);
    if (object == NULL)
    {
        FUNC1("Failed to find widget for key: %s\n", name);
        return -1;
    }
    FUNC3((GtkWidget*)object, value);
    // Its possible the value hasn't changed. Since settings are only
    // updated when the value changes, I'm initializing settings here as well.
    FUNC4(ud->settings, (GtkWidget*)object);
    return 0;
}