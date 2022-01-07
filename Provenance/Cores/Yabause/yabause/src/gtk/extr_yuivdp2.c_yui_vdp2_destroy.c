
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int running_handler; int yui; int paused_handler; } ;
typedef TYPE_1__ YuiVdp2 ;


 int GTK_WIDGET (TYPE_1__*) ;
 int g_signal_handler_disconnect (int ,int ) ;
 int gtk_widget_destroy (int ) ;

void yui_vdp2_destroy(YuiVdp2 * vdp2) {
 g_signal_handler_disconnect(vdp2->yui, vdp2->paused_handler);
 g_signal_handler_disconnect(vdp2->yui, vdp2->running_handler);
 gtk_widget_destroy(GTK_WIDGET(vdp2));
}
