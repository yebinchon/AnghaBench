
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bg; } ;
struct TYPE_5__ {float thumbnail_height; float thumbnail_width; float left_thumbnail_height; float left_thumbnail_width; float savestate_thumbnail_height; float savestate_thumbnail_width; int savestate_thumbnail; int left_thumbnail; int thumbnail; TYPE_1__ textures; } ;
typedef TYPE_2__ xmb_handle_t ;
struct texture_image {scalar_t__ width; scalar_t__ height; } ;
typedef enum menu_image_type { ____Placeholder_menu_image_type } menu_image_type ;







 int TEXTURE_FILTER_MIPMAP_LINEAR ;
 int menu_display_allocate_white_texture () ;
 int video_driver_texture_load (void*,int ,int *) ;
 int video_driver_texture_unload (int *) ;
 int xmb_context_bg_destroy (TYPE_2__*) ;

__attribute__((used)) static bool xmb_load_image(void *userdata, void *data, enum menu_image_type type)
{
   xmb_handle_t *xmb = (xmb_handle_t*)userdata;

   if (!xmb)
      return 0;

   if (!data)
   {





      if (type == 129)
         video_driver_texture_unload(&xmb->thumbnail);
      else if (type == 132)
         video_driver_texture_unload(&xmb->left_thumbnail);

      return 0;
   }

   switch (type)
   {
      case 131:
         break;
      case 128:
         xmb_context_bg_destroy(xmb);
         video_driver_texture_unload(&xmb->textures.bg);
         video_driver_texture_load(data,
               TEXTURE_FILTER_MIPMAP_LINEAR,
               &xmb->textures.bg);
         menu_display_allocate_white_texture();
         break;
      case 129:
         {
            struct texture_image *img = (struct texture_image*)data;
            xmb->thumbnail_height = xmb->thumbnail_width
               * (float)img->height / (float)img->width;
            video_driver_texture_unload(&xmb->thumbnail);
            video_driver_texture_load(data,
                  TEXTURE_FILTER_MIPMAP_LINEAR, &xmb->thumbnail);
         }
         break;
      case 132:
         {
            struct texture_image *img = (struct texture_image*)data;
            xmb->left_thumbnail_height = xmb->left_thumbnail_width
               * (float)img->height / (float)img->width;
            video_driver_texture_unload(&xmb->left_thumbnail);
            video_driver_texture_load(data,
                  TEXTURE_FILTER_MIPMAP_LINEAR, &xmb->left_thumbnail);
         }
         break;
      case 130:
         {
            struct texture_image *img = (struct texture_image*)data;
            xmb->savestate_thumbnail_height = xmb->savestate_thumbnail_width
               * (float)img->height / (float)img->width;
            video_driver_texture_unload(&xmb->savestate_thumbnail);
            video_driver_texture_load(data,
                  TEXTURE_FILTER_MIPMAP_LINEAR, &xmb->savestate_thumbnail);
         }
         break;
   }

   return 1;
}
