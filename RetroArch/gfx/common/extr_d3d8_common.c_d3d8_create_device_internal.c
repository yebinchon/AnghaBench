
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPDIRECT3DDEVICE8 ;
typedef int LPDIRECT3D8 ;
typedef int IDirect3DDevice8 ;
typedef int HWND ;
typedef int DWORD ;
typedef int D3DPRESENT_PARAMETERS ;


 int D3DDEVTYPE_HAL ;
 int IDirect3D8_CreateDevice (int ,unsigned int,int ,int ,int ,int *,int **) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static bool d3d8_create_device_internal(
      LPDIRECT3DDEVICE8 dev,
      D3DPRESENT_PARAMETERS *d3dpp,
      LPDIRECT3D8 d3d,
      HWND focus_window,
      unsigned cur_mon_id,
      DWORD behavior_flags)
{
   if (dev &&
         SUCCEEDED(IDirect3D8_CreateDevice(d3d,
               cur_mon_id,
               D3DDEVTYPE_HAL,
               focus_window,
               behavior_flags,
               d3dpp,
               (IDirect3DDevice8**)dev)))
      return 1;

   return 0;
}
