
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPDIRECT3D8 ;
typedef int HWND ;
typedef int D3DPRESENT_PARAMETERS ;


 int D3DCREATE_HARDWARE_VERTEXPROCESSING ;
 int D3DCREATE_SOFTWARE_VERTEXPROCESSING ;
 int d3d8_create_device_internal (void*,int *,int ,int ,unsigned int,int ) ;

bool d3d8_create_device(void *dev,
      void *d3dpp,
      LPDIRECT3D8 d3d,
      HWND focus_window,
      unsigned cur_mon_id)
{
   if (!d3d8_create_device_internal(dev,
            (D3DPRESENT_PARAMETERS*)d3dpp,
            d3d,
            focus_window,
            cur_mon_id,
            D3DCREATE_HARDWARE_VERTEXPROCESSING))
      if (!d3d8_create_device_internal(
               dev,
               (D3DPRESENT_PARAMETERS*)d3dpp, d3d, focus_window,
               cur_mon_id,
               D3DCREATE_SOFTWARE_VERTEXPROCESSING))
         return 0;
   return 1;
}
