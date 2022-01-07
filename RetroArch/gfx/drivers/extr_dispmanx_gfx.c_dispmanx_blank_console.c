
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dispmanx_video {int back_surface; scalar_t__ dispmanx_height; scalar_t__ dispmanx_width; } ;


 int VC_IMAGE_RGB565 ;
 int dispmanx_surface_setup (struct dispmanx_video*,int,int,int,int,int ,int,float,int,int,int *) ;
 int dispmanx_surface_update_async (int*,int ) ;

__attribute__((used)) static void dispmanx_blank_console (struct dispmanx_video *_dispvars)
{


   uint16_t image[16] = {0x0000};
   float aspect = (float)_dispvars->dispmanx_width / (float)_dispvars->dispmanx_height;

   dispmanx_surface_setup(_dispvars,
         16,
         1,
         32,
         16,
         VC_IMAGE_RGB565,
         255,
         aspect,
         1,
         -1,
         &_dispvars->back_surface);



   dispmanx_surface_update_async(image, _dispvars->back_surface);
}
