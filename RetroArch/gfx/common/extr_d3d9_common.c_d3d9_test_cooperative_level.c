
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPDIRECT3DDEVICE9 ;
typedef int HRESULT ;


 int E_FAIL ;
 int IDirect3DDevice9_TestCooperativeLevel (scalar_t__) ;

__attribute__((used)) static HRESULT d3d9_test_cooperative_level(void *data)
{

   LPDIRECT3DDEVICE9 dev = (LPDIRECT3DDEVICE9)data;
   if (dev)
      return IDirect3DDevice9_TestCooperativeLevel(dev);

   return E_FAIL;
}
