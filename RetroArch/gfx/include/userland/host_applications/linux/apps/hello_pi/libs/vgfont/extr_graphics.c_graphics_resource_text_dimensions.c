
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 int ATEXT_FONT_SIZE ;
 int graphics_resource_text_dimensions_ext (int ,char const*,int const,int *,int *,int ) ;

int32_t graphics_resource_text_dimensions( GRAPHICS_RESOURCE_HANDLE resource_handle,
                                           const char *text,
                                           const uint32_t text_length,
                                           uint32_t *width,
                                           uint32_t *height )
{
   return graphics_resource_text_dimensions_ext(resource_handle, text, text_length, width, height, ATEXT_FONT_SIZE);
}
