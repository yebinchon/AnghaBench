
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;


 int GTK_BUTTONS_OK ;
 int GTK_DIALOG (int *) ;
 int GTK_DIALOG_MODAL ;
 int GTK_MESSAGE_ERROR ;
 int GTK_WINDOW (int ) ;
 int gtk_dialog_run (int ) ;
 int * gtk_message_dialog_new (int ,int ,int ,int ,char const*,int *) ;
 int gtk_widget_destroy (int *) ;
 int yui ;

void YuiErrorMsg(const char * string) {
 GtkWidget* warningDlg = gtk_message_dialog_new (GTK_WINDOW(yui), GTK_DIALOG_MODAL, GTK_MESSAGE_ERROR,
                                                        GTK_BUTTONS_OK, string, ((void*)0));
        gtk_dialog_run (GTK_DIALOG(warningDlg));
        gtk_widget_destroy (warningDlg);
}
