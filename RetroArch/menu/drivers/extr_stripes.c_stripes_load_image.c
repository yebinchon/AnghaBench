
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct texture_image {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_4__ {int bg; } ;
struct TYPE_5__ {float thumbnail_height; float thumbnail_width; float left_thumbnail_height; float left_thumbnail_width; float savestate_thumbnail_height; float savestate_thumbnail_width; int savestate_thumbnail; int left_thumbnail; int thumbnail; TYPE_1__ textures; } ;
typedef TYPE_2__ stripes_handle_t ;
typedef enum menu_image_type { ____Placeholder_menu_image_type } menu_image_type ;







 int TEXTURE_FILTER_MIPMAP_LINEAR ;
 int menu_display_allocate_white_texture () ;
 int stripes_context_bg_destroy (TYPE_2__*) ;
 int video_driver_texture_load (void*,int ,int *) ;
 int video_driver_texture_unload (int *) ;

__attribute__((used)) static bool stripes_load_image(void *userdata, void *data, enum menu_image_type type)
{
   stripes_handle_t *stripes = (stripes_handle_t*)userdata;

   if (!stripes || !data)
      return 0;

   switch (type)
   {
      case 131:
         break;
      case 128:
         stripes_context_bg_destroy(stripes);
         video_driver_texture_unload(&stripes->textures.bg);
         video_driver_texture_load(data,
               TEXTURE_FILTER_MIPMAP_LINEAR,
               &stripes->textures.bg);
         menu_display_allocate_white_texture();
         break;
      case 129:
         {
            struct texture_image *img = (struct texture_image*)data;
            stripes->thumbnail_height = stripes->thumbnail_width
               * (float)img->height / (float)img->width;
            video_driver_texture_unload(&stripes->thumbnail);
            video_driver_texture_load(data,
                  TEXTURE_FILTER_MIPMAP_LINEAR, &stripes->thumbnail);
         }
         break;
      case 132:
         {
            struct texture_image *img = (struct texture_image*)data;
            stripes->left_thumbnail_height = stripes->left_thumbnail_width
               * (float)img->height / (float)img->width;
            video_driver_texture_unload(&stripes->left_thumbnail);
            video_driver_texture_load(data,
                  TEXTURE_FILTER_MIPMAP_LINEAR, &stripes->left_thumbnail);
         }
         break;
      case 130:
         {
            struct texture_image *img = (struct texture_image*)data;
            stripes->savestate_thumbnail_height = stripes->savestate_thumbnail_width
               * (float)img->height / (float)img->width;
            video_driver_texture_unload(&stripes->savestate_thumbnail);
            video_driver_texture_load(data,
                  TEXTURE_FILTER_MIPMAP_LINEAR, &stripes->savestate_thumbnail);
         }
         break;
   }

   return 1;
}
