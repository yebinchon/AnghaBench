
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * left_thumbnail_file_path; int left_thumbnail; int * thumbnail_file_path; int thumbnail; } ;
typedef TYPE_1__ stripes_handle_t ;


 int free (int *) ;
 int menu_display_handle_left_thumbnail_upload ;
 int menu_display_handle_thumbnail_upload ;
 scalar_t__ path_is_valid (int *) ;
 int string_is_empty (int *) ;
 int task_push_image_load (int *,int,int ,int ,int *) ;
 int video_driver_supports_rgba () ;
 int video_driver_texture_unload (int *) ;

__attribute__((used)) static void stripes_update_thumbnail_image(void *data)
{
   stripes_handle_t *stripes = (stripes_handle_t*)data;
   bool supports_rgba = video_driver_supports_rgba();
   if (!stripes)
      return;

   if (!(string_is_empty(stripes->thumbnail_file_path)))
      {
         if (path_is_valid(stripes->thumbnail_file_path))
            task_push_image_load(stripes->thumbnail_file_path,
                  supports_rgba, 0,
                  menu_display_handle_thumbnail_upload, ((void*)0));
         else
            video_driver_texture_unload(&stripes->thumbnail);

         free(stripes->thumbnail_file_path);
         stripes->thumbnail_file_path = ((void*)0);
      }

   if (!(string_is_empty(stripes->left_thumbnail_file_path)))
      {
         if (path_is_valid(stripes->left_thumbnail_file_path))
            task_push_image_load(stripes->left_thumbnail_file_path,
                  supports_rgba, 0,
                  menu_display_handle_left_thumbnail_upload, ((void*)0));
         else
            video_driver_texture_unload(&stripes->left_thumbnail);

         free(stripes->left_thumbnail_file_path);
         stripes->left_thumbnail_file_path = ((void*)0);
      }
}
