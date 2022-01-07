
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YuiScsp ;


 int GTK_WIDGET (int *) ;
 int g_signal_handler_disconnect (int ,int ) ;
 int gtk_widget_destroy (int ) ;
 int paused_handler ;
 int running_handler ;
 int yui ;

void yui_scsp_destroy(YuiScsp * scsp) {
 g_signal_handler_disconnect(yui, running_handler);
 g_signal_handler_disconnect(yui, paused_handler);

 gtk_widget_destroy(GTK_WIDGET(scsp));
}
