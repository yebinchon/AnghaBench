
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int playlist_t ;
struct TYPE_5__ {scalar_t__ status; scalar_t__ delay_timer; } ;
typedef TYPE_1__ menu_thumbnail_t ;
typedef int menu_thumbnail_path_data_t ;
typedef enum menu_thumbnail_id { ____Placeholder_menu_thumbnail_id } menu_thumbnail_id ;


 scalar_t__ MENU_THUMBNAIL_STATUS_MISSING ;
 scalar_t__ MENU_THUMBNAIL_STATUS_UNKNOWN ;
 scalar_t__ menu_animation_get_delta_time () ;
 int menu_thumbnail_request (int *,int,int *,size_t,TYPE_1__*) ;
 int menu_thumbnail_reset (TYPE_1__*) ;
 int menu_thumbnail_set_content_playlist (int *,int *,size_t) ;
 scalar_t__ menu_thumbnail_stream_delay ;

void menu_thumbnail_process_stream(
      menu_thumbnail_path_data_t *path_data, enum menu_thumbnail_id thumbnail_id,
      playlist_t *playlist, size_t idx, menu_thumbnail_t *thumbnail, bool on_screen)
{
   if (!thumbnail)
      return;

   if (on_screen)
   {



      if (thumbnail->status == MENU_THUMBNAIL_STATUS_UNKNOWN)
      {

         thumbnail->delay_timer += menu_animation_get_delta_time();

         if (thumbnail->delay_timer > menu_thumbnail_stream_delay)
         {

            if (!path_data || !playlist)
               return;


            if (!menu_thumbnail_set_content_playlist(path_data, playlist, idx))
            {


               menu_thumbnail_reset(thumbnail);
               thumbnail->status = MENU_THUMBNAIL_STATUS_MISSING;
               return;
            }


            menu_thumbnail_request(
                  path_data, thumbnail_id, playlist, idx, thumbnail);
         }
      }
   }
   else
   {




      if (thumbnail->status == MENU_THUMBNAIL_STATUS_UNKNOWN)
         thumbnail->delay_timer = 0.0f;

      else
         menu_thumbnail_reset(thumbnail);
   }
}
