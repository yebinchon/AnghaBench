
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int YuiViewer ;
struct TYPE_2__ {int * window; } ;


 TYPE_1__* GTK_WIDGET (int *) ;
 int gdk_window_clear (int *) ;

void yui_viewer_clear(YuiViewer * yv) {
 if (GTK_WIDGET(yv)->window != ((void*)0)) {
  gdk_window_clear(GTK_WIDGET(yv)->window);
 }
}
