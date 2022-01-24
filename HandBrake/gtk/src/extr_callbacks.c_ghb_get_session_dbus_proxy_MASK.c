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
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_4__ {int /*<<< orphan*/  const* message; } ;
typedef  TYPE_1__ GError ;
typedef  int /*<<< orphan*/  GDBusProxy ;
typedef  int /*<<< orphan*/  GDBusConnection ;

/* Variables and functions */
 int /*<<< orphan*/  G_BUS_TYPE_SESSION ; 
 int /*<<< orphan*/  G_DBUS_PROXY_FLAGS_NONE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static GDBusProxy *
FUNC6(const gchar *name, const gchar *path, const gchar *interface)
{
    GDBusConnection *conn;
    GDBusProxy *proxy;
    GError *error = NULL;

    FUNC2("ghb_get_session_dbus_proxy()");
    conn = FUNC0(G_BUS_TYPE_SESSION, NULL, &error);
    if (conn == NULL)
    {
        if (error != NULL)
        {
            FUNC5("DBUS cannot connect: %s", error->message);
            FUNC3(error);
        }
        return NULL;
    }

    proxy = FUNC1(conn, G_DBUS_PROXY_FLAGS_NONE, NULL,
                                  name, path, interface, NULL, NULL);
    if (proxy == NULL)
        FUNC5("Could not get DBUS proxy: %s", name);

    FUNC4(conn);
    return proxy;
}