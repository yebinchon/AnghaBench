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
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_4__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  GVariant ;
typedef  TYPE_1__ GError ;
typedef  int /*<<< orphan*/  GDBusProxy ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GPM_DBUS_PM_INTERFACE ; 
 int /*<<< orphan*/  GPM_DBUS_PM_PATH ; 
 int /*<<< orphan*/  GPM_DBUS_PM_SERVICE ; 
 int /*<<< orphan*/  G_DBUS_CALL_FLAGS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean
FUNC9()
{
    gboolean can_shutdown = FALSE;
    GDBusProxy  *proxy;
    GError *error = NULL;
    GVariant *res;


    FUNC2("ghb_can_shutdown_gpm()");
    proxy = FUNC8(GPM_DBUS_PM_SERVICE,
                            GPM_DBUS_PM_PATH, GPM_DBUS_PM_INTERFACE);
    if (proxy == NULL)
        return FALSE;

    res = FUNC1(proxy, "CanShutdown", NULL,
                                 G_DBUS_CALL_FLAGS_NONE, -1, NULL, &error);
    if (!res)
    {
        if (error != NULL)
        {
            FUNC7("CanShutdown failed: %s", error->message);
            FUNC3(error);
        }
        else
            FUNC7("CanShutdown failed");
        // Try to shutdown anyway
        can_shutdown = TRUE;
    }
    else
    {
        FUNC5(res, "(b)", &can_shutdown);
        FUNC6(res);
    }
    FUNC4(FUNC0(proxy));
    return can_shutdown;
}