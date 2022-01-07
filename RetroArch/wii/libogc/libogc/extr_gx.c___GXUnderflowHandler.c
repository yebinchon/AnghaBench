
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GX_DISABLE ;
 int GX_ENABLE ;
 int GX_TRUE ;
 int LWP_ResumeThread (int ) ;
 int __GX_WriteFifoIntEnable (int ,int ) ;
 int __GX_WriteFifoIntReset (int ,int ) ;
 int _gxcurrentlwp ;
 scalar_t__ _gxoverflowsuspend ;

__attribute__((used)) static void __GXUnderflowHandler()
{
 if(_gxoverflowsuspend) {
  _gxoverflowsuspend = 0;
  LWP_ResumeThread(_gxcurrentlwp);
  __GX_WriteFifoIntReset(GX_TRUE,GX_TRUE);
  __GX_WriteFifoIntEnable(GX_ENABLE,GX_DISABLE);
 }
}
