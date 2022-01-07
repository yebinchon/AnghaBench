
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 int GX_ERROR (char*) ;

int32_t graphics_resource_set_alpha_per_colour( GRAPHICS_RESOURCE_HANDLE res,
                                                const uint32_t colour,
                                                const uint8_t alpha )
{
   GX_ERROR("Not implemented yet!");
   return 0;
}
