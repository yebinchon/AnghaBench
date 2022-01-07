
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void texture_image ;
typedef int retro_task_t ;
struct TYPE_3__ {int type; void* data; } ;
typedef TYPE_1__ menu_ctx_load_image_t ;


 int MENU_IMAGE_SAVESTATE_THUMBNAIL ;
 int free (void*) ;
 int image_texture_free (void*) ;
 int menu_driver_load_image (TYPE_1__*) ;

void menu_display_handle_savestate_thumbnail_upload(retro_task_t *task,
      void *task_data,
      void *user_data, const char *err)
{
   menu_ctx_load_image_t load_image_info;
   struct texture_image *img = (struct texture_image*)task_data;

   load_image_info.data = img;
   load_image_info.type = MENU_IMAGE_SAVESTATE_THUMBNAIL;

   menu_driver_load_image(&load_image_info);

   image_texture_free(img);
   free(img);
   free(user_data);
}
