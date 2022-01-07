
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_3__ {int height; int width; } ;
typedef TYPE_1__* GRAPHICS_RESOURCE_HANDLE ;



int32_t graphics_get_resource_size(
   const GRAPHICS_RESOURCE_HANDLE res,
   uint32_t *w,
   uint32_t *h)
{
   if (w) *w = res->width;
   if (h) *h = res->height;
   return 0;
}
