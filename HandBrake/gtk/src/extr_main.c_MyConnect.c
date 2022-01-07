
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gchar ;
typedef int GtkBuilder ;
typedef int GObject ;
typedef int GConnectFlags ;
typedef int GCallback ;


 int G_CONNECT_AFTER ;
 int g_debug (char*,int const*) ;
 int g_message (char*,int const*) ;
 int g_return_if_fail (int ) ;
 int g_signal_connect (int *,int const*,int ,int ) ;
 int g_signal_connect_after (int *,int const*,int ,int ) ;
 int g_signal_connect_object (int *,int const*,int ,int *,int) ;
 int self_symbol_lookup (int const*) ;

__attribute__((used)) static void
MyConnect(
    GtkBuilder *builder,
    GObject *object,
    const gchar *signal_name,
    const gchar *handler_name,
    GObject *connect_object,
    GConnectFlags flags,
    gpointer user_data)
{
    GCallback callback;

    g_return_if_fail(object != ((void*)0));
    g_return_if_fail(handler_name != ((void*)0));
    g_return_if_fail(signal_name != ((void*)0));



    g_debug("handler_name %s", handler_name);
    g_debug("signal_name %s", signal_name);
    callback = self_symbol_lookup(handler_name);
    if (!callback)
    {
        g_message("Signal handler (%s) not found", handler_name);
        return;
    }
    if (connect_object)
    {
        g_signal_connect_object(object, signal_name, callback, connect_object, flags);
    }
    else
    {
        if (flags & G_CONNECT_AFTER)
        {
            g_signal_connect_after( object, signal_name, callback, user_data);
        }
        else
        {
            g_signal_connect(object, signal_name, callback, user_data);
        }
    }
}
