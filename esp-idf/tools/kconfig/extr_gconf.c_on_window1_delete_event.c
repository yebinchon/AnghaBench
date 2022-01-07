
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gpointer ;
typedef int gint ;
typedef int gboolean ;
struct TYPE_4__ {int vbox; } ;
typedef int GtkWidget ;
typedef int GtkDialogFlags ;
typedef int GdkEvent ;


 int FALSE ;
 int GTK_CONTAINER (int ) ;
 TYPE_1__* GTK_DIALOG (int *) ;
 int GTK_DIALOG_DESTROY_WITH_PARENT ;
 int GTK_DIALOG_MODAL ;




 int GTK_STOCK_CANCEL ;
 int GTK_STOCK_NO ;
 int GTK_STOCK_OK ;
 int GTK_WINDOW (int ) ;
 int TRUE ;
 int _ (char*) ;
 int conf_get_changed () ;
 int gtk_container_add (int ,int *) ;
 int * gtk_dialog_new_with_buttons (int ,int ,int ,int ,int,int ,int,int ,int,int *) ;
 int gtk_dialog_run (TYPE_1__*) ;
 int gtk_dialog_set_default_response (TYPE_1__*,int) ;
 int * gtk_label_new (int ) ;
 int gtk_widget_destroy (int *) ;
 int gtk_widget_show (int *) ;
 int main_wnd ;
 int on_save_activate (int *,int *) ;

gboolean on_window1_delete_event(GtkWidget * widget, GdkEvent * event,
     gpointer user_data)
{
 GtkWidget *dialog, *label;
 gint result;

 if (!conf_get_changed())
  return FALSE;

 dialog = gtk_dialog_new_with_buttons(_("Warning !"),
          GTK_WINDOW(main_wnd),
          (GtkDialogFlags)
          (GTK_DIALOG_MODAL |
           GTK_DIALOG_DESTROY_WITH_PARENT),
          GTK_STOCK_OK,
          128,
          GTK_STOCK_NO,
          129,
          GTK_STOCK_CANCEL,
          131, ((void*)0));
 gtk_dialog_set_default_response(GTK_DIALOG(dialog),
     131);

 label = gtk_label_new(_("\nSave configuration ?\n"));
 gtk_container_add(GTK_CONTAINER(GTK_DIALOG(dialog)->vbox), label);
 gtk_widget_show(label);

 result = gtk_dialog_run(GTK_DIALOG(dialog));
 switch (result) {
 case 128:
  on_save_activate(((void*)0), ((void*)0));
  return FALSE;
 case 129:
  return FALSE;
 case 131:
 case 130:
 default:
  gtk_widget_destroy(dialog);
  return TRUE;
 }

 return FALSE;
}
