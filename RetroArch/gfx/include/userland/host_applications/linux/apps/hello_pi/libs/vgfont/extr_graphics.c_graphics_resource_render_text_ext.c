
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_4__ {int const height; } ;
typedef TYPE_1__* GRAPHICS_RESOURCE_HANDLE ;


 scalar_t__ VCOS_SUCCESS ;
 int display ;
 scalar_t__ gx_priv_render_text (int *,TYPE_1__*,int const,int const,int const,int const,int const,int const,char const*,int const,int const) ;

int32_t graphics_resource_render_text_ext( GRAPHICS_RESOURCE_HANDLE res,
                                           const int32_t x,
                                           const int32_t y,
                                           const uint32_t width,
                                           const uint32_t height,
                                           const uint32_t fg_colour,
                                           const uint32_t bg_colour,
                                           const char *text,
                                           const uint32_t text_length,
                                           const uint32_t text_size )
{






   VCOS_STATUS_T rc = gx_priv_render_text(
      &display, res,
      x, res->height-y-text_size, width, height, fg_colour, bg_colour,
      text, text_length, text_size);

   return (rc == VCOS_SUCCESS) ? 0 : -1;
}
