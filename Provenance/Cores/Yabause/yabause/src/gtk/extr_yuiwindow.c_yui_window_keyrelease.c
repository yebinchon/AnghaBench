
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpointer ;
typedef int gboolean ;
struct TYPE_3__ {int keyval; } ;
typedef int GtkWidget ;
typedef TYPE_1__ GdkEventKey ;


 int FALSE ;
 int PerKeyUp (int ) ;

__attribute__((used)) static gboolean yui_window_keyrelease(GtkWidget *widget, GdkEventKey *event, gpointer user_data) {
 PerKeyUp(event->keyval);

 return FALSE;
}
