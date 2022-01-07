
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vulkan_display_surface_info {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_5__ {unsigned int width; unsigned int height; } ;
struct TYPE_6__ {TYPE_1__ visibleRegion; } ;
struct TYPE_7__ {TYPE_2__ parameters; } ;
typedef TYPE_3__ VkDisplayModePropertiesKHR ;



__attribute__((used)) static bool vulkan_update_display_mode(
      unsigned *width,
      unsigned *height,
      const VkDisplayModePropertiesKHR *mode,
      const struct vulkan_display_surface_info *info)
{
   unsigned visible_width = mode->parameters.visibleRegion.width;
   unsigned visible_height = mode->parameters.visibleRegion.height;

   if (!info->width || !info->height)
   {

      unsigned area = visible_width * visible_height;
      if (area > (*width) * (*height))
      {
         *width = visible_width;
         *height = visible_height;
         return 1;
      }
      else
         return 0;
   }
   else
   {

      int delta_x = (int)info->width - (int)visible_width;
      int delta_y = (int)info->height - (int)visible_height;
      int old_delta_x = (int)info->width - (int)*width;
      int old_delta_y = (int)info->height - (int)*height;

      int dist = delta_x * delta_x + delta_y * delta_y;
      int old_dist = old_delta_x * old_delta_x + old_delta_y * old_delta_y;
      if (dist < old_dist)
      {
         *width = visible_width;
         *height = visible_height;
         return 1;
      }
      else
         return 0;
   }
}
