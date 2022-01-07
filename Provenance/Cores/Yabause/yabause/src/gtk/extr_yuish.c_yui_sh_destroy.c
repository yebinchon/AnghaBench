
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bMaster; int paused_handler; int running_handler; } ;
typedef TYPE_1__ YuiSh ;


 int GTK_WIDGET (TYPE_1__*) ;
 int g_signal_handler_disconnect (int ,int ) ;
 int gtk_widget_destroy (int ) ;
 int yui ;
 int * yui_msh ;
 int * yui_ssh ;

void yui_sh_destroy(YuiSh * sh) {
  g_signal_handler_disconnect(yui, sh->running_handler);
  g_signal_handler_disconnect(yui, sh->paused_handler);

  if ( sh->bMaster ) yui_msh = ((void*)0);
  else yui_ssh = ((void*)0);

  gtk_widget_destroy(GTK_WIDGET(sh));
}
