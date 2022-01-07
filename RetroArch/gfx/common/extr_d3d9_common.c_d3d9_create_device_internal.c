
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPDIRECT3DDEVICE9 ;
typedef int LPDIRECT3D9 ;
typedef int IDirect3DDevice9 ;
typedef int HWND ;
typedef int DWORD ;
typedef int D3DPRESENT_PARAMETERS ;


 int D3DDEVTYPE_HAL ;
 int IDirect3D9_CreateDevice (int ,unsigned int,int ,int ,int ,int *,int **) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static bool d3d9_create_device_internal(
      void *data,
      D3DPRESENT_PARAMETERS *d3dpp,
      void *_d3d,
      HWND focus_window,
      unsigned cur_mon_id,
      DWORD behavior_flags)
{
   LPDIRECT3D9 d3d = (LPDIRECT3D9)_d3d;
   LPDIRECT3DDEVICE9 dev = (LPDIRECT3DDEVICE9)data;
   if (dev &&
         SUCCEEDED(IDirect3D9_CreateDevice(d3d,
               cur_mon_id,
               D3DDEVTYPE_HAL,
               focus_window,
               behavior_flags,
               d3dpp,
               (IDirect3DDevice9**)dev)))
      return 1;

   return 0;
}
