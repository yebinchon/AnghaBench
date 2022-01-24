#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bg; } ;
struct TYPE_5__ {float thumbnail_height; float thumbnail_width; float left_thumbnail_height; float left_thumbnail_width; float savestate_thumbnail_height; float savestate_thumbnail_width; int /*<<< orphan*/  savestate_thumbnail; int /*<<< orphan*/  left_thumbnail; int /*<<< orphan*/  thumbnail; TYPE_1__ textures; } ;
typedef  TYPE_2__ xmb_handle_t ;
struct texture_image {scalar_t__ width; scalar_t__ height; } ;
typedef  enum menu_image_type { ____Placeholder_menu_image_type } menu_image_type ;

/* Variables and functions */
#define  MENU_IMAGE_LEFT_THUMBNAIL 132 
#define  MENU_IMAGE_NONE 131 
#define  MENU_IMAGE_SAVESTATE_THUMBNAIL 130 
#define  MENU_IMAGE_THUMBNAIL 129 
#define  MENU_IMAGE_WALLPAPER 128 
 int /*<<< orphan*/  TEXTURE_FILTER_MIPMAP_LINEAR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static bool FUNC4(void *userdata, void *data, enum menu_image_type type)
{
   xmb_handle_t *xmb = (xmb_handle_t*)userdata;

   if (!xmb)
      return false;

   if (!data)
   {
      /* If this happens, the image we attempted to load
       * was corrupt/incorrectly formatted. If this was a
       * thumbnail image, have unload any existing thumbnails
       * (otherwise entry with 'corrupt' thumbnail will show
       * thumbnail from last selected 'good' entry) */
      if (type == MENU_IMAGE_THUMBNAIL)
         FUNC2(&xmb->thumbnail);
      else if (type == MENU_IMAGE_LEFT_THUMBNAIL)
         FUNC2(&xmb->left_thumbnail);

      return false;
   }

   switch (type)
   {
      case MENU_IMAGE_NONE:
         break;
      case MENU_IMAGE_WALLPAPER:
         FUNC3(xmb);
         FUNC2(&xmb->textures.bg);
         FUNC1(data,
               TEXTURE_FILTER_MIPMAP_LINEAR,
               &xmb->textures.bg);
         FUNC0();
         break;
      case MENU_IMAGE_THUMBNAIL:
         {
            struct texture_image *img  = (struct texture_image*)data;
            xmb->thumbnail_height      = xmb->thumbnail_width
               * (float)img->height / (float)img->width;
            FUNC2(&xmb->thumbnail);
            FUNC1(data,
                  TEXTURE_FILTER_MIPMAP_LINEAR, &xmb->thumbnail);
         }
         break;
      case MENU_IMAGE_LEFT_THUMBNAIL:
         {
            struct texture_image *img  = (struct texture_image*)data;
            xmb->left_thumbnail_height      = xmb->left_thumbnail_width
               * (float)img->height / (float)img->width;
            FUNC2(&xmb->left_thumbnail);
            FUNC1(data,
                  TEXTURE_FILTER_MIPMAP_LINEAR, &xmb->left_thumbnail);
         }
         break;
      case MENU_IMAGE_SAVESTATE_THUMBNAIL:
         {
            struct texture_image *img       = (struct texture_image*)data;
            xmb->savestate_thumbnail_height = xmb->savestate_thumbnail_width
               * (float)img->height / (float)img->width;
            FUNC2(&xmb->savestate_thumbnail);
            FUNC1(data,
                  TEXTURE_FILTER_MIPMAP_LINEAR, &xmb->savestate_thumbnail);
         }
         break;
   }

   return true;
}