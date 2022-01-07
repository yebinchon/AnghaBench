
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLSETSTEREOEMITTERSTATE3DLPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglSetStereoEmitterState3DL ;

__attribute__((used)) static int LoadExt_3DL_stereo_control()
{
 int numFailed = 0;
 _funcptr_wglSetStereoEmitterState3DL = (PFNWGLSETSTEREOEMITTERSTATE3DLPROC)IntGetProcAddress("wglSetStereoEmitterState3DL");
 if(!_funcptr_wglSetStereoEmitterState3DL) ++numFailed;
 return numFailed;
}
