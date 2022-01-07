
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 int ATEXT_FONT_SIZE ;
 int graphics_resource_render_text_ext (int ,int const,int const,int const,int const,int const,int const,char const*,int const,int ) ;

int32_t graphics_resource_render_text( GRAPHICS_RESOURCE_HANDLE res,
                                        const int32_t x,
                                        const int32_t y,
                                        const uint32_t width,
                                        const uint32_t height,
                                        const uint32_t fg_colour,
                                        const uint32_t bg_colour,
                                        const char *text,
                                        const uint32_t text_length)
{
   return graphics_resource_render_text_ext(res, x, y, width, height,
                                            fg_colour, bg_colour,
                                            text, text_length,
                                            ATEXT_FONT_SIZE);
}
