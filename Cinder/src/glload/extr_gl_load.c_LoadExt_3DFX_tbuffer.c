
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTBUFFERMASK3DFXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTbufferMask3DFX ;

__attribute__((used)) static int LoadExt_3DFX_tbuffer()
{
 int numFailed = 0;
 _funcptr_glTbufferMask3DFX = (PFNGLTBUFFERMASK3DFXPROC)IntGetProcAddress("glTbufferMask3DFX");
 if(!_funcptr_glTbufferMask3DFX) ++numFailed;
 return numFailed;
}
