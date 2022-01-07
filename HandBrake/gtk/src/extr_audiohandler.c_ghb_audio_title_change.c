
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gboolean ;
typedef int GtkWidget ;


 int * GHB_WIDGET (int ,char*) ;
 int gtk_widget_set_sensitive (int *,int ) ;

void ghb_audio_title_change(signal_user_data_t *ud, gboolean title_valid)
{
    GtkWidget *w = GHB_WIDGET(ud->builder, "audio_add");
    gtk_widget_set_sensitive(w, title_valid);
    w = GHB_WIDGET(ud->builder, "audio_add_all");
    gtk_widget_set_sensitive(w, title_valid);
    w = GHB_WIDGET(ud->builder, "audio_reset");
    gtk_widget_set_sensitive(w, title_valid);
}
