
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPDIRECT3DDEVICE9 ;
typedef int D3DPRESENT_PARAMETERS ;


 scalar_t__ D3D_OK ;
 scalar_t__ IDirect3DDevice9_Reset (scalar_t__,int *) ;

__attribute__((used)) static bool d3d9_reset_internal(void *data,
      D3DPRESENT_PARAMETERS *d3dpp
      )
{
   LPDIRECT3DDEVICE9 dev = (LPDIRECT3DDEVICE9)data;
   if (dev &&
         IDirect3DDevice9_Reset(dev, d3dpp) == D3D_OK)
      return 1;

   return 0;
}
