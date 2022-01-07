
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int menu; int action_group; } ;
typedef TYPE_2__ YuiWindow ;
struct TYPE_7__ {unsigned int width; unsigned int height; } ;
struct TYPE_9__ {TYPE_1__ allocation; } ;
typedef int GtkWidget ;
typedef int GtkAction ;


 int GTK_TOGGLE_ACTION (int *) ;
 TYPE_5__* GTK_WIDGET (TYPE_2__*) ;
 int GTK_WINDOW (TYPE_2__*) ;
 int * gtk_action_group_get_action (int ,char*) ;
 scalar_t__ gtk_toggle_action_get_active (int ) ;
 int gtk_widget_hide (int ) ;
 int gtk_widget_show (int ) ;
 int gtk_window_fullscreen (int ) ;
 int gtk_window_resize (int ,unsigned int,unsigned int) ;
 int gtk_window_unfullscreen (int ) ;

void yui_window_toggle_fullscreen(GtkWidget * w, YuiWindow * yui) {
 GtkAction * action = gtk_action_group_get_action(yui->action_group, "fullscreen");
 static unsigned int beforefswidth = 1;
 static unsigned int beforefsheight = 1;

 if (gtk_toggle_action_get_active(GTK_TOGGLE_ACTION(action))) {
  beforefswidth = GTK_WIDGET(yui)->allocation.width;
  beforefsheight = GTK_WIDGET(yui)->allocation.height;
  gtk_widget_hide(yui->menu);
  gtk_window_fullscreen(GTK_WINDOW(yui));
 } else {
  gtk_window_unfullscreen(GTK_WINDOW(yui));
  gtk_widget_show(yui->menu);
  gtk_window_resize(GTK_WINDOW(yui), beforefswidth, beforefsheight);
 }
}
