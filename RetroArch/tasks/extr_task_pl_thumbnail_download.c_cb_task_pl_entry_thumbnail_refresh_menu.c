
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int menu_driver; } ;
struct TYPE_10__ {TYPE_1__ arrays; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_11__ {scalar_t__ state; } ;
typedef TYPE_3__ retro_task_t ;
typedef int playlist_t ;
struct TYPE_12__ {scalar_t__ list_index; int thumbnail_path_data; scalar_t__ overwrite; int left_thumbnail_exists; int right_thumbnail_exists; int playlist_path; } ;
typedef TYPE_4__ pl_thumb_handle_t ;
struct TYPE_13__ {scalar_t__ rpl_entry_selection_ptr; } ;
typedef TYPE_5__ menu_handle_t ;


 int MENU_THUMBNAIL_LEFT ;
 int MENU_THUMBNAIL_RIGHT ;
 int RARCH_MENU_CTL_REFRESH_THUMBNAIL_IMAGE ;
 TYPE_2__* config_get_ptr () ;
 int menu_driver_ctl (int ,unsigned int*) ;
 TYPE_5__* menu_driver_get_ptr () ;
 scalar_t__ menu_navigation_get_selection () ;
 scalar_t__ menu_thumbnail_get_path (int ,int ,char const**) ;
 scalar_t__ menu_thumbnail_update_path (int ,int ) ;
 int path_is_valid (char const*) ;
 int * playlist_get_cached () ;
 char* playlist_get_conf_path (int *) ;
 scalar_t__ string_is_empty (char*) ;
 scalar_t__ string_is_equal (int ,char*) ;

__attribute__((used)) static void cb_task_pl_entry_thumbnail_refresh_menu(
      retro_task_t *task, void *task_data,
      void *user_data, const char *err)
{
}
