
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int32_t ;
typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_5__ {scalar_t__ height; } ;
typedef int GX_CLIENT_STATE_T ;
typedef TYPE_1__* GRAPHICS_RESOURCE_HANDLE ;


 scalar_t__ VCOS_SUCCESS ;
 scalar_t__ gx_priv_resource_fill (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int gx_priv_restore (int *) ;
 int gx_priv_save (int *,TYPE_1__*) ;

int32_t graphics_resource_fill(GRAPHICS_RESOURCE_HANDLE res,
                               uint32_t x,
                               uint32_t y,
                               uint32_t width,
                               uint32_t height,
                               uint32_t fill_colour )
{
   GX_CLIENT_STATE_T save;
   gx_priv_save(&save, res);

   VCOS_STATUS_T st = gx_priv_resource_fill(
      res,
      x, res->height-y-height,
      width, height,
      fill_colour);

   gx_priv_restore(&save);

   return st == VCOS_SUCCESS ? 0 : -1;
}
