
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int int32_t ;
struct TYPE_3__ {int height; int width; } ;
typedef TYPE_1__ DISPMANX_MODEINFO_T ;
typedef scalar_t__ DISPMANX_DISPLAY_HANDLE_T ;


 int vc_dispmanx_display_close (scalar_t__) ;
 int vc_dispmanx_display_get_info (scalar_t__,TYPE_1__*) ;
 scalar_t__ vc_dispmanx_display_open (int const) ;

int32_t graphics_get_display_size( const uint16_t display_number,
                                                    uint32_t *width,
                                                    uint32_t *height)
{
   DISPMANX_DISPLAY_HANDLE_T display_handle = 0;
   DISPMANX_MODEINFO_T mode_info;
   int32_t success = -1;


   display_handle = vc_dispmanx_display_open(display_number);

   if (display_handle) {
      success = vc_dispmanx_display_get_info(display_handle, &mode_info);

      if( success >= 0 )
      {
         if( ((void*)0) != width )
         {
            *width = mode_info.width;
         }

         if( ((void*)0) != height )
         {
            *height = mode_info.height;
         }
      }
      vc_dispmanx_display_close(display_handle);
      display_handle = 0;
   }

   return success;
}
