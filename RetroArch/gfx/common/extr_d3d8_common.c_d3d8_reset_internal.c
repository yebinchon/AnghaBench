
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPDIRECT3DDEVICE8 ;
typedef int D3DPRESENT_PARAMETERS ;


 scalar_t__ D3D_OK ;
 scalar_t__ IDirect3DDevice8_Reset (scalar_t__,int *) ;

__attribute__((used)) static bool d3d8_reset_internal(LPDIRECT3DDEVICE8 dev,
      D3DPRESENT_PARAMETERS *d3dpp
      )
{
   if (dev &&
         IDirect3DDevice8_Reset(dev, d3dpp) == D3D_OK)
      return 1;
   return 0;
}
