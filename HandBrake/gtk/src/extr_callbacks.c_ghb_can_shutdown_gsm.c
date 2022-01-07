
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GVariant ;
typedef int GError ;
typedef int GDBusProxy ;


 int FALSE ;
 int GPM_DBUS_SM_INTERFACE ;
 int GPM_DBUS_SM_PATH ;
 int GPM_DBUS_SM_SERVICE ;
 int G_DBUS_CALL_FLAGS_NONE ;
 int G_OBJECT (int *) ;
 int * g_dbus_proxy_call_sync (int *,char*,int *,int ,int,int *,int **) ;
 int g_error_free (int *) ;
 int g_object_unref (int ) ;
 int g_variant_get (int *,char*,int *) ;
 int g_variant_unref (int *) ;
 int ghb_can_shutdown_gpm () ;
 int * ghb_get_session_dbus_proxy (int ,int ,int ) ;

__attribute__((used)) static gboolean
ghb_can_shutdown_gsm()
{
    gboolean can_shutdown = FALSE;

    GDBusProxy *proxy;
    GError *error = ((void*)0);
    GVariant *res;

    proxy = ghb_get_session_dbus_proxy(GPM_DBUS_SM_SERVICE,
                            GPM_DBUS_SM_PATH, GPM_DBUS_SM_INTERFACE);
    if (proxy == ((void*)0))
        return FALSE;

    res = g_dbus_proxy_call_sync(proxy, "CanShutdown", ((void*)0),
                                 G_DBUS_CALL_FLAGS_NONE, -1, ((void*)0), &error);
    g_object_unref(G_OBJECT(proxy));
    if (!res)
    {
        if (error != ((void*)0))
        {
            g_error_free(error);
        }

        can_shutdown = ghb_can_shutdown_gpm();
    }
    else
    {
        g_variant_get(res, "(b)", &can_shutdown);
        g_variant_unref(res);
    }

    return can_shutdown;
}
