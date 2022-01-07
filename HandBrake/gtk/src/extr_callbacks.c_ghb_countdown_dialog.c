
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int guint ;
typedef int gint ;
typedef int gchar ;
struct TYPE_6__ {int dlg; TYPE_1__* ud; int timeout; int const* action; int const* msg; } ;
typedef TYPE_2__ countdown_t ;
typedef int GtkWindow ;
typedef int GtkWidget ;
typedef scalar_t__ GtkResponseType ;
typedef int GtkMessageType ;
typedef int GSourceFunc ;
typedef int GSource ;
typedef int GMainContext ;


 int GHB_WIDGET (int ,char*) ;
 int GTK_BUTTONS_NONE ;
 int GTK_DIALOG (int *) ;
 int GTK_DIALOG_MODAL ;
 int GTK_MESSAGE_DIALOG (int *) ;
 scalar_t__ GTK_RESPONSE_CANCEL ;
 int * GTK_WINDOW (int ) ;
 int _ (char*) ;
 int * g_main_context_default () ;
 int * g_main_context_find_source_by_id (int *,int ) ;
 int g_source_destroy (int *) ;
 int g_timeout_add (int,int ,TYPE_2__*) ;
 int gtk_dialog_add_buttons (int ,int const*,scalar_t__,int *) ;
 scalar_t__ gtk_dialog_run (int ) ;
 int * gtk_message_dialog_new (int *,int ,int ,int ,int ,int const*,int const*,int ) ;
 int gtk_widget_destroy (int *) ;

void
ghb_countdown_dialog(
    GtkMessageType type,
    const gchar *message,
    const gchar *action,
    const gchar *cancel,
    GSourceFunc action_func,
    signal_user_data_t *ud,
    gint timeout)
{
    GtkWindow *hb_window;
    GtkWidget *dialog;
    GtkResponseType response;
    guint timeout_id;
    countdown_t cd;

    cd.msg = message;
    cd.action = action;
    cd.timeout = timeout;
    cd.ud = ud;


    hb_window = GTK_WINDOW(GHB_WIDGET(ud->builder, "hb_window"));
    dialog = gtk_message_dialog_new(hb_window, GTK_DIALOG_MODAL,
                            type, GTK_BUTTONS_NONE,
                            _("%s\n\n%s in %d seconds ..."),
                            message, action, timeout);
    gtk_dialog_add_buttons( GTK_DIALOG(dialog),
                           cancel, GTK_RESPONSE_CANCEL,
                           ((void*)0));

    cd.dlg = GTK_MESSAGE_DIALOG(dialog);
    timeout_id = g_timeout_add(1000, action_func, &cd);
    response = gtk_dialog_run(GTK_DIALOG(dialog));
    gtk_widget_destroy (dialog);
    if (response == GTK_RESPONSE_CANCEL)
    {
        GMainContext *mc;
        GSource *source;

        mc = g_main_context_default();
        source = g_main_context_find_source_by_id(mc, timeout_id);
        if (source != ((void*)0))
            g_source_destroy(source);
    }
}
