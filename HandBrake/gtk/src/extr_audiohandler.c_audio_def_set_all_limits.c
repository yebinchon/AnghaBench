
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gpointer ;
typedef int GtkListBox ;


 int GHB_WIDGET (int ,char*) ;
 int GTK_CONTAINER (int *) ;
 int * GTK_LIST_BOX (int ) ;
 int audio_def_set_all_limits_cb ;
 int gtk_container_foreach (int ,int ,int ) ;

void audio_def_set_all_limits(signal_user_data_t *ud)
{
    GtkListBox *list_box;

    list_box = GTK_LIST_BOX(GHB_WIDGET(ud->builder, "audio_list_default"));
    gtk_container_foreach(GTK_CONTAINER(list_box),
                          audio_def_set_all_limits_cb, (gpointer)ud);
}
