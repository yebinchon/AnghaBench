
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpointer ;
typedef int gboolean ;
struct TYPE_3__ {int button; } ;
typedef int GtkWidget ;
typedef TYPE_1__ GdkEventButton ;


 int FALSE ;
 scalar_t__ PERMOUSE ;
 scalar_t__ PerGetId (int ) ;
 int PerMouseLeftReleased (int ) ;
 int PerMouseMiddleReleased (int ) ;
 int PerMouseRightReleased (int ) ;
 int padbits ;

__attribute__((used)) static gboolean yui_gl_button_release(GtkWidget * widget, GdkEventButton * event, gpointer user_data) {
 if (PerGetId(padbits) == PERMOUSE) {
  switch(event->button) {
   case 1:
    PerMouseLeftReleased(padbits);
    break;
   case 2:
    PerMouseMiddleReleased(padbits);
    break;
   case 3:
    PerMouseRightReleased(padbits);
    break;
  }
 }
 return FALSE;
}
