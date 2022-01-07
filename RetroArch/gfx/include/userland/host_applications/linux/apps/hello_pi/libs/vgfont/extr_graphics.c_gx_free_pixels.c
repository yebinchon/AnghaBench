
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GRAPHICS_RESOURCE_HANDLE ;


 int vcos_free (void*) ;

void gx_free_pixels(const GRAPHICS_RESOURCE_HANDLE res, void *pixels)
{
   vcos_free(pixels);
}
