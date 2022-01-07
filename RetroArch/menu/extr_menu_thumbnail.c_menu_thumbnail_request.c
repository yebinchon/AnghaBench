
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ network_on_demand_thumbnails; } ;
struct TYPE_10__ {int menu_thumbnail_upscale_threshold; } ;
struct TYPE_12__ {TYPE_2__ bools; TYPE_1__ uints; } ;
typedef TYPE_3__ settings_t ;
typedef int playlist_t ;
struct TYPE_13__ {int list_id; TYPE_5__* thumbnail; } ;
typedef TYPE_4__ menu_thumbnail_tag_t ;
struct TYPE_14__ {int status; } ;
typedef TYPE_5__ menu_thumbnail_t ;
typedef int menu_thumbnail_path_data_t ;
typedef int last_img_name ;
typedef enum menu_thumbnail_id { ____Placeholder_menu_thumbnail_id } menu_thumbnail_id ;


 int MENU_THUMBNAIL_STATUS_MISSING ;
 int MENU_THUMBNAIL_STATUS_PENDING ;
 int PATH_MAX_LENGTH ;
 scalar_t__ calloc (int,int) ;
 TYPE_3__* config_get_ptr () ;
 int menu_thumbnail_get_img_name (int *,char const**) ;
 int menu_thumbnail_get_path (int *,int,char const**) ;
 int menu_thumbnail_get_system (int *,char const**) ;
 int menu_thumbnail_handle_upload ;
 scalar_t__ menu_thumbnail_is_enabled (int *,int) ;
 int menu_thumbnail_list_id ;
 int menu_thumbnail_reset (TYPE_5__*) ;
 scalar_t__ menu_thumbnail_update_path (int *,int) ;
 scalar_t__ path_is_valid (char const*) ;
 scalar_t__ string_is_equal (char const*,char*) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ task_push_image_load (char const*,int ,int ,int ,TYPE_4__*) ;
 int task_push_pl_entry_thumbnail_download (char const*,int *,unsigned int,int,int) ;
 int video_driver_supports_rgba () ;

void menu_thumbnail_request(
      menu_thumbnail_path_data_t *path_data, enum menu_thumbnail_id thumbnail_id,
      playlist_t *playlist, size_t idx, menu_thumbnail_t *thumbnail)
{
   settings_t *settings = config_get_ptr();
   const char *thumbnail_path = ((void*)0);
   bool has_thumbnail = 0;

   if (!path_data || !thumbnail || !settings)
      return;



   menu_thumbnail_reset(thumbnail);
   thumbnail->status = MENU_THUMBNAIL_STATUS_MISSING;


   if (menu_thumbnail_is_enabled(path_data, thumbnail_id))
      if (menu_thumbnail_update_path(path_data, thumbnail_id))
         has_thumbnail = menu_thumbnail_get_path(path_data, thumbnail_id, &thumbnail_path);


   if (has_thumbnail)
   {
      if (path_is_valid(thumbnail_path))
      {
         menu_thumbnail_tag_t *thumbnail_tag =
               (menu_thumbnail_tag_t*)calloc(1, sizeof(menu_thumbnail_tag_t));

         if (!thumbnail_tag)
            return;


         thumbnail_tag->thumbnail = thumbnail;
         thumbnail_tag->list_id = menu_thumbnail_list_id;



         if(task_push_image_load(
               thumbnail_path, video_driver_supports_rgba(),
               settings->uints.menu_thumbnail_upscale_threshold,
               menu_thumbnail_handle_upload, thumbnail_tag))
            thumbnail->status = MENU_THUMBNAIL_STATUS_PENDING;
      }
   }
}
