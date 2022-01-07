
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpointer ;
typedef int gint ;
struct TYPE_3__ {int * window; } ;
typedef TYPE_1__ GtkWidget ;
typedef int GtkRequisition ;


 int GTK_PANED (int ) ;
 int GTK_WINDOW (int ) ;
 int gdk_window_get_size (int *,int*,int*) ;
 int gtk_paned_set_position (int ,int) ;
 int gtk_window_get_default_size (int ,int*,int*) ;
 int main_wnd ;
 int vpaned ;

void
on_window1_size_request(GtkWidget * widget,
   GtkRequisition * requisition, gpointer user_data)
{
 static gint old_h;
 gint w, h;

 if (widget->window == ((void*)0))
  gtk_window_get_default_size(GTK_WINDOW(main_wnd), &w, &h);
 else
  gdk_window_get_size(widget->window, &w, &h);

 if (h == old_h)
  return;
 old_h = h;

 gtk_paned_set_position(GTK_PANED(vpaned), 2 * h / 3);
}
