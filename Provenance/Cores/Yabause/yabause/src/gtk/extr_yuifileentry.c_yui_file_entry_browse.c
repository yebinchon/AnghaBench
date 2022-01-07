
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gpointer ;
typedef int gint ;
typedef char gchar ;
struct TYPE_4__ {int flags; int entry; } ;
typedef TYPE_1__ YuiFileEntry ;
typedef int GtkWidget ;
typedef int GtkFileChooserAction ;


 int GTK_DIALOG (int *) ;
 int GTK_ENTRY (int ) ;
 int GTK_FILE_CHOOSER (int *) ;
 int GTK_FILE_CHOOSER_ACTION_OPEN ;
 int GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER ;


 int GTK_STOCK_CANCEL ;
 int GTK_STOCK_OPEN ;
 int YUI_FILE_ENTRY_DIRECTORY ;
 int gtk_dialog_run (int ) ;
 char* gtk_entry_get_text (int ) ;
 int gtk_entry_set_text (int ,char const*) ;
 int * gtk_file_chooser_dialog_new (char*,int *,int ,int ,int,int ,int,int *) ;
 char* gtk_file_chooser_get_filename (int ) ;
 int gtk_file_chooser_set_filename (int ,char const*) ;
 int gtk_widget_destroy (int *) ;
 int gtk_widget_show (int *) ;

__attribute__((used)) static void yui_file_entry_browse(GtkWidget * widget, gpointer user_data) {
        GtkWidget * file_selector;
        gint result;
        const gchar * filename;
 YuiFileEntry * yfe = user_data;
 GtkFileChooserAction action;

 if (yfe->flags & YUI_FILE_ENTRY_DIRECTORY) {
  action = GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER;
 } else {
  action = GTK_FILE_CHOOSER_ACTION_OPEN;
 }

        file_selector = gtk_file_chooser_dialog_new ("Please choose a file", ((void*)0), action,
                        GTK_STOCK_CANCEL, 128, GTK_STOCK_OPEN, 129, ((void*)0));
 filename = gtk_entry_get_text(GTK_ENTRY(yfe->entry));
 if (filename[0] != '\0')
         gtk_file_chooser_set_filename(GTK_FILE_CHOOSER(file_selector), filename);

        gtk_widget_show(file_selector);

        result = gtk_dialog_run(GTK_DIALOG(file_selector));

        switch(result) {
                case 129:
                        filename = gtk_file_chooser_get_filename(GTK_FILE_CHOOSER(file_selector));
                        gtk_entry_set_text(GTK_ENTRY(yfe->entry), filename);
                        break;
                case 128:
                        break;
        }

        gtk_widget_destroy(file_selector);
}
