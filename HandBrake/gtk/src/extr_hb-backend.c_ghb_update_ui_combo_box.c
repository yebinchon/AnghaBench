
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gpointer ;
typedef scalar_t__ gint ;
typedef int gchar ;
typedef scalar_t__ gboolean ;
struct TYPE_9__ {int opts; int * name; int (* opts_set ) (TYPE_1__*,int *,int ,void const*) ;} ;
typedef TYPE_2__ combo_name_map_t ;
typedef int GtkComboBox ;


 int GHB_WIDGET (int ,int const*) ;
 int * GTK_COMBO_BOX (int ) ;
 int GTK_TYPE_COMBO_BOX ;
 int G_SIGNAL_MATCH_ID ;
 TYPE_2__* combo_name_map ;
 TYPE_2__* find_combo_map (int const*) ;
 int g_signal_handler_block (int ,scalar_t__) ;
 scalar_t__ g_signal_handler_find (int ,int ,scalar_t__,int ,int ,int ,int ) ;
 int g_signal_handler_unblock (int ,scalar_t__) ;
 scalar_t__ g_signal_lookup (char*,int ) ;
 int stub1 (TYPE_1__*,int *,int ,void const*) ;
 int stub2 (TYPE_1__*,int *,int ,void const*) ;

void
ghb_update_ui_combo_box(
    signal_user_data_t *ud,
    const gchar *name,
    const void* user_data,
    gboolean all)
{
    GtkComboBox *combo = ((void*)0);
    gint signal_id;
    gint handler_id = 0;

    if (name != ((void*)0))
    {



        combo = GTK_COMBO_BOX(GHB_WIDGET(ud->builder, name));
        signal_id = g_signal_lookup("changed", GTK_TYPE_COMBO_BOX);
        if (signal_id > 0)
        {

            handler_id = g_signal_handler_find ((gpointer)combo, G_SIGNAL_MATCH_ID,
                                                signal_id, 0, 0, 0, 0);
            if (handler_id > 0)
            {

                g_signal_handler_block ((gpointer)combo, handler_id);
            }
        }
    }
    if (all)
    {
        int ii;
        for (ii = 0; combo_name_map[ii].name != ((void*)0); ii++)
        {
            combo_name_map_t *entry = &combo_name_map[ii];
            entry->opts_set(ud, entry->name, entry->opts, user_data);
        }
    }
    else
    {
        combo_name_map_t *entry = find_combo_map(name);
        if (entry != ((void*)0))
        {
            entry->opts_set(ud, entry->name, entry->opts, user_data);
        }
    }
    if (handler_id > 0)
    {
        g_signal_handler_unblock ((gpointer)combo, handler_id);
    }
}
