
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_5__ {int count; TYPE_1__* ud; } ;
typedef TYPE_2__ button_click_t ;
struct TYPE_4__ {int builder; } ;
typedef int GtkWidget ;


 int FALSE ;
 int * GHB_WIDGET (int ,char*) ;
 int gtk_widget_hide (int *) ;

__attribute__((used)) static gboolean
easter_egg_timeout_cb(button_click_t *bc)
{
    if (bc->count == 1)
    {
        GtkWidget *widget;
        widget = GHB_WIDGET(bc->ud->builder, "allow_tweaks");
        gtk_widget_hide(widget);
        widget = GHB_WIDGET(bc->ud->builder, "hbfd_feature");
        gtk_widget_hide(widget);
    }
    bc->count = 0;

    return FALSE;
}
