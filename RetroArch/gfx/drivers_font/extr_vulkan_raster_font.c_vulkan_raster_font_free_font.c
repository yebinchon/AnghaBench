
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int texture_optimal; TYPE_2__* vk; int texture; scalar_t__ font_data; TYPE_3__* font_driver; } ;
typedef TYPE_4__ vulkan_raster_t ;
struct TYPE_8__ {int (* free ) (scalar_t__) ;} ;
struct TYPE_7__ {TYPE_1__* context; } ;
struct TYPE_6__ {int device; int queue; } ;


 int free (TYPE_4__*) ;
 int stub1 (scalar_t__) ;
 int vkQueueWaitIdle (int ) ;
 int vulkan_destroy_texture (int ,int *) ;

__attribute__((used)) static void vulkan_raster_font_free_font(void *data, bool is_threaded)
{
   vulkan_raster_t *font = (vulkan_raster_t*)data;
   if (!font)
      return;

   if (font->font_driver && font->font_data)
      font->font_driver->free(font->font_data);

   vkQueueWaitIdle(font->vk->context->queue);
   vulkan_destroy_texture(
         font->vk->context->device, &font->texture);
   vulkan_destroy_texture(
         font->vk->context->device, &font->texture_optimal);

   free(font);
}
