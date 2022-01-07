
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* preview; int builder; } ;
typedef TYPE_2__ signal_user_data_t ;
typedef scalar_t__ gboolean ;
struct TYPE_5__ {int live_id; size_t encode_frame; size_t frame; int * encoded; } ;
typedef int GtkWidget ;


 int FALSE ;
 int * GHB_WIDGET (int ,char*) ;
 int GTK_PROGRESS_BAR (int *) ;
 int TRUE ;
 int gtk_progress_bar_set_fraction (int ,int) ;
 int gtk_progress_bar_set_text (int ,char*) ;
 int gtk_widget_hide (int *) ;
 int gtk_widget_show (int *) ;
 int live_preview_start (TYPE_2__*) ;

void
ghb_live_encode_done(signal_user_data_t *ud, gboolean success)
{
    GtkWidget *widget;
    GtkWidget *prog;

    ud->preview->live_id = -1;
    prog = GHB_WIDGET(ud->builder, "live_encode_progress");
    if (success &&
        ud->preview->encode_frame == ud->preview->frame)
    {
        gtk_progress_bar_set_text(GTK_PROGRESS_BAR(prog), "Done");
        gtk_progress_bar_set_fraction (GTK_PROGRESS_BAR(prog), 1);
        ud->preview->encoded[ud->preview->encode_frame] = TRUE;



        widget = GHB_WIDGET(ud->builder, "live_progress_box");
        gtk_widget_hide (widget);
        widget = GHB_WIDGET(ud->builder, "live_preview_progress");
        gtk_widget_show (widget);
    }
    else
    {
        gtk_progress_bar_set_text(GTK_PROGRESS_BAR(prog), "");
        gtk_progress_bar_set_fraction (GTK_PROGRESS_BAR(prog), 0);
        ud->preview->encoded[ud->preview->encode_frame] = FALSE;
    }
}
