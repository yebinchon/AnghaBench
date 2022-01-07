
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLFINISHTEXTURESUNXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glFinishTextureSUNX ;

__attribute__((used)) static int LoadExt_SUNX_constant_data()
{
 int numFailed = 0;
 _funcptr_glFinishTextureSUNX = (PFNGLFINISHTEXTURESUNXPROC)IntGetProcAddress("glFinishTextureSUNX");
 if(!_funcptr_glFinishTextureSUNX) ++numFailed;
 return numFailed;
}
