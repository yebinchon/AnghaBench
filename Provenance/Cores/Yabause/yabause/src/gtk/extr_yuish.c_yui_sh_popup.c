
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * gpointer ;
typedef int gint ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {int button; int time; } ;
typedef int GtkWidget ;
typedef int GtkMenu ;
typedef TYPE_1__ GdkEventButton ;
typedef TYPE_2__ GdkEvent ;


 int FALSE ;
 scalar_t__ GDK_BUTTON_PRESS ;
 int GTK_IS_MENU (int *) ;
 int * GTK_MENU (int *) ;
 int g_return_val_if_fail (int ,int ) ;
 int gtk_menu_popup (int *,int *,int *,int *,int *,int,int ) ;

gint yui_sh_popup(GtkWidget * widget, GdkEvent * event, gpointer data)
{
  GtkMenu *menu;
  GdkEventButton *event_button;

  g_return_val_if_fail (data != ((void*)0), FALSE);
  g_return_val_if_fail (GTK_IS_MENU (data), FALSE);
  g_return_val_if_fail (event != ((void*)0), FALSE);

  menu = GTK_MENU(data);

  if (event->type == GDK_BUTTON_PRESS) {
      event_button = (GdkEventButton *) event;
      if (event_button->button == 3) {
   gtk_menu_popup (menu, ((void*)0), ((void*)0), ((void*)0), ((void*)0), event_button->button, event_button->time);
      }
  }

  return FALSE;
}
