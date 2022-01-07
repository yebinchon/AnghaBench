
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkWidget ;
typedef int GtkProgressBar ;
typedef int GtkLabel ;


 int * GHB_WIDGET (int ,char*) ;
 int * GTK_LABEL (int *) ;
 int * GTK_PROGRESS_BAR (int *) ;
 int _ (char*) ;
 int gtk_label_set_text (int *,int ) ;
 int gtk_progress_bar_set_fraction (int *,int ) ;
 int gtk_widget_hide (int *) ;
 int gtk_widget_show (int *) ;

__attribute__((used)) static void
show_scan_progress(signal_user_data_t *ud)
{
    GtkWidget * widget;
    GtkProgressBar * progress;
    GtkLabel * label;

    widget = GHB_WIDGET(ud->builder, "SourceInfoBox");
    gtk_widget_hide(widget);

    widget = GHB_WIDGET(ud->builder, "SourceScanBox");
    gtk_widget_show(widget);

    progress = GTK_PROGRESS_BAR(GHB_WIDGET(ud->builder, "scan_prog"));
    gtk_progress_bar_set_fraction(progress, 0);

    label = GTK_LABEL(GHB_WIDGET(ud->builder, "source_scan_label"));
    gtk_label_set_text( label, _("Scanning ...") );

}
