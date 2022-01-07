
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_3__ {void* reset_func; int run_func; int init_data; void* init_func; int * actions; } ;
typedef TYPE_1__ YuiWindow ;
typedef int YuiAction ;
typedef int GtkWidget ;
typedef int GSourceFunc ;
typedef void* GCallback ;


 int * GTK_WIDGET (int ) ;
 TYPE_1__* YUI_WINDOW (int *) ;
 int g_object_new (int ,int *) ;
 int yui_window_get_type () ;

GtkWidget * yui_window_new(YuiAction * act, GCallback ifunc, gpointer idata,
  GSourceFunc rfunc, GCallback resetfunc) {
 GtkWidget * widget;
 YuiWindow * yw;

 widget = GTK_WIDGET(g_object_new(yui_window_get_type(), ((void*)0)));
 yw = YUI_WINDOW(widget);

 yw->actions = act;
 yw->init_func = ifunc;
 yw->init_data = idata;
 yw->run_func = rfunc;
 yw->reset_func = resetfunc;

 return widget;
}
