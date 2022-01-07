
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int builder; int queue; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gint ;
typedef int gchar ;
typedef int GtkLabel ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_LABEL (int ) ;
 int _ (char*) ;
 int g_free (int *) ;
 int * g_strdup_printf (int ,int) ;
 int gtk_label_set_text (int *,int *) ;
 int queue_pending_count (int ) ;
 int update_queue_labels (TYPE_1__*) ;

void
ghb_update_pending(signal_user_data_t *ud)
{
    GtkLabel *label;
    gint pending;
    gchar *str;

    pending = queue_pending_count(ud->queue);
    if (pending == 1)
    {
        str = g_strdup_printf(_("%d encode pending"), pending);
    }
    else
    {
        str = g_strdup_printf(_("%d encodes pending"), pending);
    }
    label = GTK_LABEL(GHB_WIDGET(ud->builder, "pending_status"));
    gtk_label_set_text(label, str);
    label = GTK_LABEL(GHB_WIDGET(ud->builder, "queue_status_label"));
    gtk_label_set_text(label, str);
    g_free(str);

    update_queue_labels(ud);
}
