
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int gboolean ;
typedef int GtkWidget ;


 int GTK_BUTTONS_OK ;
 int GTK_DIALOG (int *) ;
 int GTK_DIALOG_MODAL ;
 int GTK_MESSAGE_WARNING ;


 int GTK_WINDOW (int ) ;
 int G_KEY_FILE_NONE ;
 int * create_dialog1 () ;
 int g_file_set_contents (int ,int ,int,int ) ;
 int g_key_file_load_from_file (int ,int ,int ,int ) ;
 int g_key_file_to_data (int ,int ,int ) ;
 int gtk_dialog_run (int ) ;
 int * gtk_message_dialog_new (int ,int ,int ,int ,char*) ;
 int gtk_widget_destroy (int *) ;
 int inifile ;
 int keyfile ;
 int yui ;
 int yui_settings_load () ;

void yui_conf(void) {
 gint result;
 GtkWidget * dialog;

 dialog = create_dialog1();

 result = gtk_dialog_run(GTK_DIALOG(dialog));
 gtk_widget_destroy(dialog);
 switch(result) {
  case 128:
                {
   gboolean mustRestart;
   g_file_set_contents(inifile, g_key_file_to_data(keyfile, 0, 0), -1, 0);
   mustRestart = yui_settings_load();
   if (mustRestart) {
                         GtkWidget* warningDlg = gtk_message_dialog_new (GTK_WINDOW(yui),
                                                                         GTK_DIALOG_MODAL,
                                                                         GTK_MESSAGE_WARNING,
                                                                         GTK_BUTTONS_OK,
                                                                         "You must restart Yabause before the changes take effect.");

                         gtk_dialog_run (GTK_DIALOG(warningDlg));
                         gtk_widget_destroy (warningDlg);
   }
   break;
                }
  case 129:
   g_key_file_load_from_file(keyfile, inifile, G_KEY_FILE_NONE, 0);
   break;
 }
}
