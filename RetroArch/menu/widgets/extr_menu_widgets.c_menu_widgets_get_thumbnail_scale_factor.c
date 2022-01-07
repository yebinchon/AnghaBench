
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float menu_widgets_get_thumbnail_scale_factor(const float dst_width, const float dst_height,
      const float image_width, const float image_height)
{
   float dst_ratio = dst_width / dst_height;
   float image_ratio = image_width / image_height;

   return (dst_ratio > image_ratio) ? dst_height / image_height : dst_width / image_width;
}
