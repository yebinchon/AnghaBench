
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int logpopup; } ;
typedef TYPE_1__ YuiWindow ;


 int gtk_widget_hide (int ) ;
 int gtk_widget_show_all (int ) ;

void yui_window_show_log(YuiWindow * yui) {
 static int i = 0;
 if (i)
  gtk_widget_hide(yui->logpopup);
 else
  gtk_widget_show_all(yui->logpopup);
 i = !i;
}
