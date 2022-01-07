
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* gpointer ;
typedef int gint ;
struct TYPE_6__ {int bp_menu; } ;
typedef TYPE_1__ YuiSh ;
struct TYPE_7__ {scalar_t__ type; int button; int time; } ;
typedef int GtkWidget ;
typedef int GtkMenu ;
typedef TYPE_3__ GdkEventButton ;


 int FALSE ;
 scalar_t__ GDK_BUTTON_PRESS ;
 int * GTK_MENU (int ) ;
 int g_return_val_if_fail (int ,int ) ;
 int gtk_menu_popup (int *,int *,int *,int *,int *,int,int ) ;

gint yui_sh_bp_popup(GtkWidget * widget, GdkEventButton * event, gpointer data)
{
  GtkMenu *menu;
  GdkEventButton *event_button;
  YuiSh * sh2 = data;

  g_return_val_if_fail (data != ((void*)0), FALSE);
  g_return_val_if_fail (event != ((void*)0), FALSE);

  menu = GTK_MENU(sh2->bp_menu);

  if (event->type == GDK_BUTTON_PRESS) {
      event_button = (GdkEventButton *) event;
      if (event_button->button == 3) {
   gtk_menu_popup (menu, ((void*)0), ((void*)0), ((void*)0), ((void*)0), event_button->button, event_button->time);
      }
  }

  return FALSE;
}
