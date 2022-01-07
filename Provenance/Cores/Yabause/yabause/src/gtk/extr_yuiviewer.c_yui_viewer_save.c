
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gint ;
struct TYPE_3__ {int w; int pixbuf; } ;
typedef TYPE_1__ YuiViewer ;
typedef int GtkWidget ;


 int GTK_DIALOG (int *) ;
 int GTK_FILE_CHOOSER (int *) ;
 int GTK_FILE_CHOOSER_ACTION_SAVE ;


 int GTK_STOCK_CANCEL ;
 int GTK_STOCK_SAVE ;
 int gdk_pixbuf_save (int ,char*,char*,int *,int *) ;
 int gtk_dialog_run (int ) ;
 int * gtk_file_chooser_dialog_new (char*,int *,int ,int ,int,int ,int,int *) ;
 char* gtk_file_chooser_get_filename (int ) ;
 int gtk_widget_destroy (int *) ;
 int gtk_widget_show (int *) ;

void yui_viewer_save(YuiViewer * yv) {
        GtkWidget * file_selector;
        gint result;
 char * filename;
 int rowstride;

        file_selector = gtk_file_chooser_dialog_new ("Please choose a file", ((void*)0), GTK_FILE_CHOOSER_ACTION_SAVE,
                        GTK_STOCK_CANCEL, 128, GTK_STOCK_SAVE, 129, ((void*)0));

        gtk_widget_show(file_selector);

        result = gtk_dialog_run(GTK_DIALOG(file_selector));

        switch(result) {
                case 129:
   rowstride = yv->w * 4;
   rowstride += (rowstride % 4)? (4 - (rowstride % 4)): 0;
   filename = gtk_file_chooser_get_filename(GTK_FILE_CHOOSER(file_selector));

   gdk_pixbuf_save(yv->pixbuf, filename, "png", ((void*)0), ((void*)0));

                        break;
                case 128:
                        break;
        }

        gtk_widget_destroy(file_selector);
}
