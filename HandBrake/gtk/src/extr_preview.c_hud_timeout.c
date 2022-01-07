
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gboolean ;
typedef int GtkWidget ;


 int FALSE ;
 int * GHB_WIDGET (int ,char*) ;
 int g_debug (char*) ;
 int gtk_widget_hide (int *) ;
 scalar_t__ hud_timeout_id ;

__attribute__((used)) static gboolean
hud_timeout(signal_user_data_t *ud)
{
    GtkWidget *widget;

    g_debug("hud_timeout()");
    widget = GHB_WIDGET(ud->builder, "preview_hud");
    gtk_widget_hide(widget);
    hud_timeout_id = 0;
    return FALSE;
}
