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
struct TYPE_3__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC4(
    signal_user_data_t *ud,
    GhbValue *settings,
    const gchar *name,
    const GhbValue *value)
{
    GObject *object;

    FUNC1("ghb_ui_update() %s", name);
    if (name == NULL || value == NULL)
        return 0;
    object = FUNC0(ud->builder, name);
    if (object == NULL)
    {
        FUNC1("Failed to find widget for key: %s\n", name);
        return -1;
    }
    FUNC2((GtkWidget*)object, value);
    // Its possible the value hasn't changed. Since settings are only
    // updated when the value changes, I'm initializing settings here as well.
    FUNC3(settings, (GtkWidget*)object);
    return 0;
}