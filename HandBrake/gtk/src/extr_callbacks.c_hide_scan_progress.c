
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkWidget ;
typedef int GtkProgressBar ;


 int * GHB_WIDGET (int ,char*) ;
 int * GTK_PROGRESS_BAR (int *) ;
 int gtk_progress_bar_set_fraction (int *,double) ;
 int gtk_widget_hide (int *) ;
 int gtk_widget_show (int *) ;

__attribute__((used)) static void
hide_scan_progress(signal_user_data_t *ud)
{
    GtkWidget * widget;
    GtkProgressBar * progress;

    progress = GTK_PROGRESS_BAR(GHB_WIDGET(ud->builder, "scan_prog"));
    gtk_progress_bar_set_fraction(progress, 1.0);

    widget = GHB_WIDGET(ud->builder, "SourceScanBox");
    gtk_widget_hide(widget);

    widget = GHB_WIDGET(ud->builder, "SourceInfoBox");
    gtk_widget_show(widget);
}
