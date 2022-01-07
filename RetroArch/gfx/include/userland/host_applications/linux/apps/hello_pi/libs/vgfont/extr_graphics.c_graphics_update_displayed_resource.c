
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int GX_CLIENT_STATE_T ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 int gx_priv_flush (int ) ;
 int gx_priv_restore (int *) ;
 int gx_priv_save (int *,int ) ;

int32_t graphics_update_displayed_resource(GRAPHICS_RESOURCE_HANDLE res,
                                           const uint32_t x_offset,
                                           const uint32_t y_offset,
                                           const uint32_t width,
                                           const uint32_t height )
{
   GX_CLIENT_STATE_T save;
   gx_priv_save(&save, res);

   gx_priv_flush(res);

   gx_priv_restore(&save);

   return 0;
}
