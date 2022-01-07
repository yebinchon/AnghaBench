
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_STATUS_T ;
typedef int GX_CLIENT_STATE_T ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 int GX_TOP_BOTTOM ;
 int VCOS_SUCCESS ;
 int gx_priv_get_pixels (int const,void**,int ) ;
 int gx_priv_restore (int *) ;
 int gx_priv_save (int *,int const) ;

VCOS_STATUS_T gx_get_pixels(const GRAPHICS_RESOURCE_HANDLE res, void **pixels)
{
   VCOS_STATUS_T status = VCOS_SUCCESS;
   GX_CLIENT_STATE_T save;
   gx_priv_save(&save, res);


   status = gx_priv_get_pixels(res, pixels, GX_TOP_BOTTOM);

   gx_priv_restore(&save);
   return status;
}
