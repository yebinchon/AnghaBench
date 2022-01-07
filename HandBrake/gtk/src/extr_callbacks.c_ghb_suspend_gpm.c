
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int message; } ;
typedef int GVariant ;
typedef TYPE_1__ GError ;
typedef int GDBusProxy ;


 int GPM_DBUS_PM_INTERFACE ;
 int GPM_DBUS_PM_PATH ;
 int GPM_DBUS_PM_SERVICE ;
 int G_DBUS_CALL_FLAGS_NONE ;
 int G_OBJECT (int *) ;
 int * g_dbus_proxy_call_sync (int *,char*,int *,int ,int,int *,TYPE_1__**) ;
 int g_debug (char*) ;
 int g_error_free (TYPE_1__*) ;
 int g_object_unref (int ) ;
 int g_variant_unref (int *) ;
 int g_warning (char*,...) ;
 int * ghb_get_session_dbus_proxy (int ,int ,int ) ;

__attribute__((used)) static void
ghb_suspend_gpm()
{

    GDBusProxy *proxy;
    GError *error = ((void*)0);
    GVariant *res;


    g_debug("ghb_suspend_gpm()");
    proxy = ghb_get_session_dbus_proxy(GPM_DBUS_PM_SERVICE,
                            GPM_DBUS_PM_PATH, GPM_DBUS_PM_INTERFACE);
    if (proxy == ((void*)0))
        return;

    res = g_dbus_proxy_call_sync(proxy, "Suspend", ((void*)0),
                                 G_DBUS_CALL_FLAGS_NONE, -1, ((void*)0), &error);
    if (!res)
    {
        if (error != ((void*)0))
        {
            g_warning("Suspend failed: %s", error->message);
            g_error_free(error);
        }
        else
            g_warning("Suspend failed");
    }
    else
    {
        g_variant_unref(res);
    }
    g_object_unref(G_OBJECT(proxy));

}
