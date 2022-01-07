
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkTreeView ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_TREE_VIEW (int ) ;
 int ghb_init_lang_list (int *,TYPE_1__*) ;
 int ghb_init_lang_list_model (int *) ;

void ghb_init_subtitle_defaults_ui(signal_user_data_t *ud)
{
    GtkTreeView * tv;

    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_avail_lang"));
    ghb_init_lang_list(tv, ud);
    tv = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_selected_lang"));
    ghb_init_lang_list_model(tv);
}
