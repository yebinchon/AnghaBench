
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int YuiWindow ;
typedef int GtkWidget ;
typedef int GdkEvent ;


 int TRUE ;
 int yui_window_show_log (int *) ;

__attribute__((used)) static gboolean yui_window_log_delete(GtkWidget *widget, GdkEvent *event, YuiWindow *yw ) {

  yui_window_show_log( yw );

  return TRUE;
}
