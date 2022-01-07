
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cancel_encode; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef char gchar ;
typedef int GtkWindow ;
typedef int GtkWidget ;
typedef scalar_t__ GtkResponseType ;


 int GHB_CANCEL_ALL ;
 int GHB_CANCEL_CURRENT ;
 int GHB_CANCEL_FINISH ;
 int GHB_CANCEL_NONE ;
 int GHB_WIDGET (int ,char*) ;
 int GTK_BUTTONS_NONE ;
 int GTK_DIALOG (int *) ;
 int GTK_DIALOG_MODAL ;
 int GTK_MESSAGE_WARNING ;
 int * GTK_WINDOW (int ) ;
 int _ (char*) ;
 int ghb_stop_queue () ;
 int gtk_dialog_add_buttons (int ,int ,int,int ,int,int ,int,int ,int,int *) ;
 scalar_t__ gtk_dialog_run (int ) ;
 int * gtk_message_dialog_new (int *,int ,int ,int ,int ,char const*) ;
 int gtk_widget_destroy (int *) ;

void
ghb_cancel_encode(signal_user_data_t *ud, const gchar *extra_msg)
{
    GtkWindow *hb_window;
    GtkWidget *dialog;
    GtkResponseType response;

    if (extra_msg == ((void*)0)) extra_msg = "";

    hb_window = GTK_WINDOW(GHB_WIDGET(ud->builder, "hb_window"));
    dialog = gtk_message_dialog_new(hb_window, GTK_DIALOG_MODAL,
                GTK_MESSAGE_WARNING, GTK_BUTTONS_NONE,
                _("%sYour movie will be lost if you don't continue encoding."),
                extra_msg);
    gtk_dialog_add_buttons( GTK_DIALOG(dialog),
                           _("Cancel Current and Stop"), 1,
                           _("Cancel Current, Start Next"), 2,
                           _("Finish Current, then Stop"), 3,
                           _("Continue Encoding"), 4,
                           ((void*)0));
    response = gtk_dialog_run(GTK_DIALOG(dialog));
    gtk_widget_destroy (dialog);
    switch ((int)response)
    {
        case 1:
            ghb_stop_queue();
            ud->cancel_encode = GHB_CANCEL_ALL;
            break;
        case 2:
            ghb_stop_queue();
            ud->cancel_encode = GHB_CANCEL_CURRENT;
            break;
        case 3:
            ud->cancel_encode = GHB_CANCEL_FINISH;
            break;
        case 4:
        default:
            ud->cancel_encode = GHB_CANCEL_NONE;
            break;
    }
}
