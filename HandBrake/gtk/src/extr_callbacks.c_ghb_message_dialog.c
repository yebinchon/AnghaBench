
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int gboolean ;
typedef int GtkWindow ;
typedef int GtkWidget ;
typedef scalar_t__ GtkResponseType ;
typedef int GtkMessageType ;


 int FALSE ;
 int GTK_BUTTONS_NONE ;
 int GTK_DIALOG (int *) ;
 int GTK_DIALOG_MODAL ;
 scalar_t__ GTK_RESPONSE_NO ;
 int GTK_RESPONSE_YES ;
 int TRUE ;
 int gtk_dialog_add_buttons (int ,int const*,scalar_t__,int const*,int ,int *) ;
 scalar_t__ gtk_dialog_run (int ) ;
 int * gtk_message_dialog_new (int *,int ,int ,int ,char*,int const*) ;
 int gtk_widget_destroy (int *) ;

gboolean
ghb_message_dialog(GtkWindow *parent, GtkMessageType type, const gchar *message, const gchar *no, const gchar *yes)
{
    GtkWidget *dialog;
    GtkResponseType response;


    dialog = gtk_message_dialog_new(parent, GTK_DIALOG_MODAL,
                            type, GTK_BUTTONS_NONE,
                            "%s", message);
    gtk_dialog_add_buttons( GTK_DIALOG(dialog),
                           no, GTK_RESPONSE_NO,
                           yes, GTK_RESPONSE_YES, ((void*)0));
    response = gtk_dialog_run(GTK_DIALOG(dialog));
    gtk_widget_destroy (dialog);
    if (response == GTK_RESPONSE_NO)
    {
        return FALSE;
    }
    return TRUE;
}
