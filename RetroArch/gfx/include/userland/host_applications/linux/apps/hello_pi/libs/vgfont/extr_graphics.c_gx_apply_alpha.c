
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef double uint8_t ;
typedef int int32_t ;
struct TYPE_4__ {scalar_t__ type; double alpha; } ;
typedef TYPE_1__* GRAPHICS_RESOURCE_HANDLE ;


 scalar_t__ GX_PBUFFER ;
 int vcos_assert (TYPE_1__*) ;

int32_t gx_apply_alpha( GRAPHICS_RESOURCE_HANDLE resource_handle,
                        const uint8_t alpha )
{
   vcos_assert(resource_handle);
   if (resource_handle->type != GX_PBUFFER)
   {
      vcos_assert(0);
      return -1;
   }
   resource_handle->alpha = 1.0*alpha/255;
   return 0;
}
