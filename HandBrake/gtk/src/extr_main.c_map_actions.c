
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int signal_user_data_t ;
struct TYPE_4__ {char* member_0; char* member_2; char* member_3; int * member_1; int member_4; } ;
typedef int GApplication ;
typedef TYPE_1__ GActionEntry ;


 int G_ACTION_MAP (int *) ;
 int G_N_ELEMENTS (TYPE_1__ const*) ;
 int * about_action_cb ;
 int * destination_action_cb ;
 int g_action_map_add_action_entries (int ,TYPE_1__ const*,int ,int *) ;
 int * guide_action_cb ;
 int hbfd_action_cb ;
 int * preferences_action_cb ;
 int * preset_default_action_cb ;
 int * preset_export_action_cb ;
 int * preset_import_action_cb ;
 int * preset_reload_action_cb ;
 int * preset_remove_action_cb ;
 int * preset_rename_action_cb ;
 int * preset_save_action_cb ;
 int * preset_save_as_action_cb ;
 int * preset_select_action_cb ;
 int * presets_reload_action_cb ;
 int * queue_add_action_cb ;
 int * queue_add_all_action_cb ;
 int * queue_delete_all_action_cb ;
 int * queue_delete_complete_action_cb ;
 int * queue_edit_action_cb ;
 int * queue_export_action_cb ;
 int * queue_import_action_cb ;
 int * queue_open_dest_action_cb ;
 int * queue_open_log_action_cb ;
 int * queue_open_log_dir_action_cb ;
 int * queue_open_source_action_cb ;
 int * queue_pause_action_cb ;
 int * queue_reset_action_cb ;
 int * queue_reset_all_action_cb ;
 int * queue_reset_fail_action_cb ;
 int * queue_start_action_cb ;
 int * quit_action_cb ;
 int show_activity_action_cb ;
 int show_presets_action_cb ;
 int show_preview_action_cb ;
 int show_queue_action_cb ;
 int * single_title_action_cb ;
 int * source_action_cb ;

__attribute__((used)) static void map_actions(GApplication * app, signal_user_data_t * ud)
{
    const GActionEntry entries[] =
    {
        { "source", source_action_cb },
        { "single", single_title_action_cb },
        { "destination", destination_action_cb },
        { "preferences", preferences_action_cb },
        { "quit", quit_action_cb },
        { "queue-add", queue_add_action_cb },
        { "queue-add-all", queue_add_all_action_cb },
        { "queue-start", queue_start_action_cb },
        { "queue-pause", queue_pause_action_cb },
        { "queue-open-source", queue_open_source_action_cb },
        { "queue-open-dest", queue_open_dest_action_cb },
        { "queue-open-log-dir", queue_open_log_dir_action_cb },
        { "queue-open-log", queue_open_log_action_cb },
        { "queue-reset-fail", queue_reset_fail_action_cb },
        { "queue-reset-all", queue_reset_all_action_cb },
        { "queue-reset", queue_reset_action_cb },
        { "queue-delete-complete", queue_delete_complete_action_cb },
        { "queue-delete-all", queue_delete_all_action_cb },
        { "queue-export", queue_export_action_cb },
        { "queue-import", queue_import_action_cb },
        { "queue-edit", queue_edit_action_cb },
        { "hbfd", ((void*)0),
          ((void*)0), "false", hbfd_action_cb },
        { "show-presets", ((void*)0),
          ((void*)0), "false", show_presets_action_cb },
        { "show-queue", ((void*)0),
          ((void*)0), "false", show_queue_action_cb },
        { "show-preview", ((void*)0),
          ((void*)0), "false", show_preview_action_cb },
        { "show-activity", ((void*)0),
          ((void*)0), "false", show_activity_action_cb },
        { "preset-save", preset_save_action_cb },
        { "preset-save-as", preset_save_as_action_cb },
        { "preset-rename", preset_rename_action_cb },
        { "preset-remove", preset_remove_action_cb },
        { "preset-default", preset_default_action_cb },
        { "preset-export", preset_export_action_cb },
        { "preset-import", preset_import_action_cb },
        { "presets-reload", presets_reload_action_cb },
        { "about", about_action_cb },
        { "guide", guide_action_cb },
        { "preset-select", preset_select_action_cb, "s" },
        { "preset-reload", preset_reload_action_cb, },
    };
    g_action_map_add_action_entries(G_ACTION_MAP(app), entries,
                                    G_N_ELEMENTS(entries), ud);
}
