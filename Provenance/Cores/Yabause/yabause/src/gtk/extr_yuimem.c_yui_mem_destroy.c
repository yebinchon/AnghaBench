
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int paused_handler; int yui; int running_handler; } ;
typedef TYPE_1__ YuiMem ;


 int GTK_WIDGET (TYPE_1__*) ;
 int g_signal_handler_disconnect (int ,int ) ;
 int gtk_widget_destroy (int ) ;

void yui_mem_destroy(YuiMem * ym) {
 g_signal_handler_disconnect(ym->yui, ym->running_handler);
 g_signal_handler_disconnect(ym->yui, ym->paused_handler);

 gtk_widget_destroy(GTK_WIDGET(ym));
}
