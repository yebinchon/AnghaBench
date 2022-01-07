
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GRAPHICS_RESOURCE_HANDLE_TABLE_T ;
typedef int DISPMANX_UPDATE_HANDLE_T ;


 int vc_dispmanx_update_submit_sync (int ) ;

void gx_priv_finish_native_window(GRAPHICS_RESOURCE_HANDLE_TABLE_T *res,
                                  void *current_update)
{
   vc_dispmanx_update_submit_sync((DISPMANX_UPDATE_HANDLE_T)current_update);
}
