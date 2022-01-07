
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum image_type_enum { ____Placeholder_image_type_enum } image_type_enum ;


 int TEXTURE_FILTER_MIPMAP_LINEAR ;
 int ai_service_overlay_height ;
 int ai_service_overlay_state ;
 int ai_service_overlay_texture ;
 int ai_service_overlay_width ;
 int menu_display_reset_textures_list_buffer (int *,int ,void*,unsigned int,int,int *,int *) ;

bool menu_widgets_ai_service_overlay_load(
        char* buffer, unsigned buffer_len, enum image_type_enum image_type)
{
   if (ai_service_overlay_state == 0)
   {
      bool res;
      res = menu_display_reset_textures_list_buffer(
               &ai_service_overlay_texture,
               TEXTURE_FILTER_MIPMAP_LINEAR,
               (void *) buffer, buffer_len, image_type,
               &ai_service_overlay_width, &ai_service_overlay_height);
      if (res)
         ai_service_overlay_state = 1;
      return res;
   }
   return 1;
}
