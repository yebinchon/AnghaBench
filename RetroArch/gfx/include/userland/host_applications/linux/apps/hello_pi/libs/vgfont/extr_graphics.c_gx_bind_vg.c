
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_STATUS_T ;
typedef int GX_CLIENT_STATE_T ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 int VCOS_SUCCESS ;
 int gx_priv_save (int *,int ) ;
 int vcos_assert (int) ;
 scalar_t__ vgGetError () ;

VCOS_STATUS_T gx_bind_vg( GX_CLIENT_STATE_T *save, GRAPHICS_RESOURCE_HANDLE res )
{
   gx_priv_save(save, res);
   vcos_assert(vgGetError()==0);
   return VCOS_SUCCESS;
}
