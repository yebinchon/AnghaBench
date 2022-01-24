#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  GVariant ;
typedef  TYPE_1__ GError ;
typedef  int /*<<< orphan*/  GDBusProxy ;

/* Variables and functions */
 int /*<<< orphan*/  GPM_DBUS_PM_INTERFACE ; 
 int /*<<< orphan*/  GPM_DBUS_PM_PATH ; 
 int /*<<< orphan*/  GPM_DBUS_PM_SERVICE ; 
 int /*<<< orphan*/  G_DBUS_CALL_FLAGS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8()
{
    GDBusProxy  *proxy;
    GError *error = NULL;
    GVariant *res;


    FUNC2("ghb_shutdown_gpm()");
    proxy = FUNC7(GPM_DBUS_PM_SERVICE,
                            GPM_DBUS_PM_PATH, GPM_DBUS_PM_INTERFACE);
    if (proxy == NULL)
        return;

    res = FUNC1(proxy, "Shutdown", NULL,
                                 G_DBUS_CALL_FLAGS_NONE, -1, NULL, &error);
    if (!res)
    {
        if (error != NULL)
        {
            FUNC6("Shutdown failed: %s", error->message);
            FUNC3(error);
        }
        else
            FUNC6("Shutdown failed");
    }
    else
    {
        FUNC5(res);
    }
    FUNC4(FUNC0(proxy));
}