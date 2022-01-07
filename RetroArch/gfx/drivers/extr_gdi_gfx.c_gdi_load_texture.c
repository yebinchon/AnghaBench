
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct texture_image {int width; int height; int pixels; } ;
struct TYPE_3__ {int width; int height; int active_width; int active_height; int type; scalar_t__ data; } ;
typedef TYPE_1__ gdi_texture_t ;
typedef enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;


 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 int memcpy (scalar_t__,int ,int) ;

__attribute__((used)) static uintptr_t gdi_load_texture(void *video_data, void *data,
      bool threaded, enum texture_filter_type filter_type)
{
   void *tmpdata = ((void*)0);
   gdi_texture_t *texture = ((void*)0);
   struct texture_image *image = (struct texture_image*)data;

   if (!image || image->width > 2048 || image->height > 2048)
      return 0;

   texture = (gdi_texture_t*)calloc(1, sizeof(*texture));

   if (!texture)
      return 0;

   texture->width = image->width;
   texture->height = image->height;
   texture->active_width = image->width;
   texture->active_height = image->height;
   texture->data = calloc(1,
         texture->width * texture->height * sizeof(uint32_t));
   texture->type = filter_type;

   if (!texture->data)
   {
      free(texture);
      return 0;
   }

   memcpy(texture->data, image->pixels,
         texture->width * texture->height * sizeof(uint32_t));

   return (uintptr_t)texture;
}
