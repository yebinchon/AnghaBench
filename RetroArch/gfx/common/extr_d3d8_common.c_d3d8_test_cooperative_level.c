
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPDIRECT3DDEVICE8 ;
typedef int HRESULT ;


 int E_FAIL ;
 int IDirect3DDevice8_TestCooperativeLevel (scalar_t__) ;

__attribute__((used)) static HRESULT d3d8_test_cooperative_level(LPDIRECT3DDEVICE8 dev)
{

   if (dev)
      return IDirect3DDevice8_TestCooperativeLevel(dev);

   return E_FAIL;
}
