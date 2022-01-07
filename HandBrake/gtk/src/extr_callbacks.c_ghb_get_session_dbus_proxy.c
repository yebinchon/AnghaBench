
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_4__ {int const* message; } ;
typedef TYPE_1__ GError ;
typedef int GDBusProxy ;
typedef int GDBusConnection ;


 int G_BUS_TYPE_SESSION ;
 int G_DBUS_PROXY_FLAGS_NONE ;
 int * g_bus_get_sync (int ,int *,TYPE_1__**) ;
 int * g_dbus_proxy_new_sync (int *,int ,int *,int const*,int const*,int const*,int *,int *) ;
 int g_debug (char*) ;
 int g_error_free (TYPE_1__*) ;
 int g_object_unref (int *) ;
 int g_warning (char*,int const*) ;

__attribute__((used)) static GDBusProxy *
ghb_get_session_dbus_proxy(const gchar *name, const gchar *path, const gchar *interface)
{
    GDBusConnection *conn;
    GDBusProxy *proxy;
    GError *error = ((void*)0);

    g_debug("ghb_get_session_dbus_proxy()");
    conn = g_bus_get_sync(G_BUS_TYPE_SESSION, ((void*)0), &error);
    if (conn == ((void*)0))
    {
        if (error != ((void*)0))
        {
            g_warning("DBUS cannot connect: %s", error->message);
            g_error_free(error);
        }
        return ((void*)0);
    }

    proxy = g_dbus_proxy_new_sync(conn, G_DBUS_PROXY_FLAGS_NONE, ((void*)0),
                                  name, path, interface, ((void*)0), ((void*)0));
    if (proxy == ((void*)0))
        g_warning("Could not get DBUS proxy: %s", name);

    g_object_unref(conn);
    return proxy;
}
