
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int paused_handler; int running_handler; } ;
typedef TYPE_1__ YuiScudsp ;


 int GTK_WIDGET (TYPE_1__*) ;
 int g_signal_handler_disconnect (int ,int ) ;
 int gtk_widget_destroy (int ) ;
 int yui ;
 int * yui_scudsp ;

void yui_scudsp_destroy(YuiScudsp * scudsp) {
  g_signal_handler_disconnect(yui, scudsp->running_handler);
  g_signal_handler_disconnect(yui, scudsp->paused_handler);

  yui_scudsp = ((void*)0);

  gtk_widget_destroy(GTK_WIDGET(scudsp));
}
