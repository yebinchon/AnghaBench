#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GVariant ;
typedef  int /*<<< orphan*/  GError ;
typedef  int /*<<< orphan*/  GDBusProxy ;

/* Variables and functions */
 int /*<<< orphan*/  GPM_DBUS_SM_INTERFACE ; 
 int /*<<< orphan*/  GPM_DBUS_SM_PATH ; 
 int /*<<< orphan*/  GPM_DBUS_SM_SERVICE ; 
 int /*<<< orphan*/  G_DBUS_CALL_FLAGS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8()
{
#if !defined(_WIN32)
    GDBusProxy  *proxy;
    GError *error = NULL;
    GVariant *res;


    FUNC2("ghb_shutdown_gpm()");
    proxy = FUNC6(GPM_DBUS_SM_SERVICE,
                            GPM_DBUS_SM_PATH, GPM_DBUS_SM_INTERFACE);
    if (proxy == NULL)
        return;

    res = FUNC1(proxy, "Shutdown", NULL,
                                 G_DBUS_CALL_FLAGS_NONE, -1, NULL, &error);
    FUNC4(FUNC0(proxy));
    if (!res)
    {
        if (error != NULL)
        {
            FUNC3(error);
        }
        // Try the gpm version
        FUNC7();
    }
    else
    {
        FUNC5(res);
    }
#endif
}