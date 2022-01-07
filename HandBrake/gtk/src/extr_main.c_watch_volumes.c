
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkWidget ;
typedef int GdkWindow ;
typedef int GVolumeMonitor ;
typedef int GCallback ;


 int * GHB_WIDGET (int ,char*) ;
 scalar_t__ drive_changed_cb ;
 int g_signal_connect (int *,char*,int ,TYPE_1__*) ;
 int * g_volume_monitor_get () ;
 int gdk_window_add_filter (int *,int ,TYPE_1__*) ;
 int * gtk_widget_get_parent_window (int *) ;
 int win_message_cb ;

void
watch_volumes(signal_user_data_t *ud)
{

    GVolumeMonitor *gvm;
    gvm = g_volume_monitor_get();

    g_signal_connect(gvm, "drive-changed", (GCallback)drive_changed_cb, ud);
}
