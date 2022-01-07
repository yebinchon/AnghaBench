
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int paused_handler; int running_handler; } ;
typedef TYPE_1__ YuiM68k ;


 int GTK_WIDGET (TYPE_1__*) ;
 int g_signal_handler_disconnect (int ,int ) ;
 int gtk_widget_destroy (int ) ;
 int yui ;
 int * yui_m68k ;

void yui_m68k_destroy(YuiM68k * m68k) {
  g_signal_handler_disconnect(yui, m68k->running_handler);
  g_signal_handler_disconnect(yui, m68k->paused_handler);

  yui_m68k = ((void*)0);

  gtk_widget_destroy(GTK_WIDGET(m68k));
}
