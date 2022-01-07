
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GtkWindow ;
typedef int GtkWidget ;
typedef int GtkMessageType ;


 int GTK_BUTTONS_NONE ;
 int GTK_DIALOG (int *) ;
 int GTK_DIALOG_MODAL ;
 int GTK_RESPONSE_CANCEL ;
 int gtk_dialog_add_buttons (int ,int const*,int ,int *) ;
 int gtk_dialog_run (int ) ;
 int * gtk_message_dialog_new (int *,int ,int ,int ,char*,int const*) ;
 int gtk_widget_destroy (int *) ;

void
ghb_error_dialog(GtkWindow *parent, GtkMessageType type, const gchar *message, const gchar *cancel)
{
    GtkWidget *dialog;


    dialog = gtk_message_dialog_new(parent, GTK_DIALOG_MODAL,
                            type, GTK_BUTTONS_NONE,
                            "%s", message);
    gtk_dialog_add_buttons( GTK_DIALOG(dialog),
                           cancel, GTK_RESPONSE_CANCEL, ((void*)0));
    gtk_dialog_run(GTK_DIALOG(dialog));
    gtk_widget_destroy (dialog);
}
