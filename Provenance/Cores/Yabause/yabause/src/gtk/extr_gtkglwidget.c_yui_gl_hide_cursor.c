
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gpointer ;
typedef int gboolean ;
struct TYPE_7__ {int x; int y; } ;
struct TYPE_6__ {int window; } ;
typedef TYPE_1__ GtkWidget ;
typedef TYPE_2__ GdkEventMotion ;


 int FALSE ;
 scalar_t__ PERMOUSE ;
 scalar_t__ PerGetId (int ) ;
 int PerMouseMove (int ,double,double) ;
 int beforehiding ;
 double g_key_file_get_double (int ,char*,char*,int *) ;
 int g_timeout_add (int,int ,TYPE_1__*) ;
 int gdk_window_set_cursor (int ,int *) ;
 int gonna_hide ;
 int keyfile ;
 int oldx ;
 int oldy ;
 int padbits ;

__attribute__((used)) static gboolean yui_gl_hide_cursor(GtkWidget * widget, GdkEventMotion * event, gpointer user_data) {
 if (PerGetId(padbits) == PERMOUSE) {
  int x = event->x;
  int y = event->y;
  double speed = g_key_file_get_double(keyfile, "General", "MouseSpeed", ((void*)0));

  PerMouseMove(padbits, speed * (x - oldx), -speed * (y - oldy));
  oldx = x;
  oldy = y;
 }

 if (beforehiding == 0) {
  gdk_window_set_cursor(widget->window, ((void*)0));
  g_timeout_add(1000, gonna_hide, widget);
 }

 beforehiding = 2;

 return FALSE;
}
