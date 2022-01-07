
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bg; } ;
struct TYPE_5__ {TYPE_1__ textures; } ;
typedef TYPE_2__ materialui_handle_t ;
typedef enum menu_image_type { ____Placeholder_menu_image_type } menu_image_type ;


 int MENU_IMAGE_WALLPAPER ;
 int TEXTURE_FILTER_MIPMAP_LINEAR ;
 int materialui_context_bg_destroy (TYPE_2__*) ;
 int menu_display_allocate_white_texture () ;
 int video_driver_texture_load (void*,int ,int *) ;

__attribute__((used)) static bool materialui_load_image(void *userdata, void *data, enum menu_image_type type)
{
   materialui_handle_t *mui = (materialui_handle_t*)userdata;

   if (type == MENU_IMAGE_WALLPAPER)
   {
      materialui_context_bg_destroy(mui);
      video_driver_texture_load(data,
            TEXTURE_FILTER_MIPMAP_LINEAR, &mui->textures.bg);
      menu_display_allocate_white_texture();
   }

   return 1;
}
