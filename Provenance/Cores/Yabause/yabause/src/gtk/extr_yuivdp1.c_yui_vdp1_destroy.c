
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int paused_handler; int yui; int running_handler; } ;
typedef TYPE_1__ YuiVdp1 ;


 int GTK_WIDGET (TYPE_1__*) ;
 int g_signal_handler_disconnect (int ,int ) ;
 int gtk_widget_destroy (int ) ;

void yui_vdp1_destroy(YuiVdp1 * vdp1) {
 g_signal_handler_disconnect(vdp1->yui, vdp1->running_handler);
 g_signal_handler_disconnect(vdp1->yui, vdp1->paused_handler);

 gtk_widget_destroy(GTK_WIDGET(vdp1));
}
