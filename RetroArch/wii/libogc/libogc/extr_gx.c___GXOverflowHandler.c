
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GX_DISABLE ;
 int GX_ENABLE ;
 int GX_FALSE ;
 int GX_TRUE ;
 int LWP_SuspendThread (int ) ;
 int __GX_WriteFifoIntEnable (int ,int ) ;
 int __GX_WriteFifoIntReset (int ,int ) ;
 int _gxcurrentlwp ;
 int _gxoverflowcount ;
 int _gxoverflowsuspend ;

__attribute__((used)) static void __GXOverflowHandler()
{
 if(!_gxoverflowsuspend) {
  _gxoverflowsuspend = 1;
  _gxoverflowcount++;
  __GX_WriteFifoIntEnable(GX_DISABLE,GX_ENABLE);
  __GX_WriteFifoIntReset(GX_TRUE,GX_FALSE);
  LWP_SuspendThread(_gxcurrentlwp);
 }
}
