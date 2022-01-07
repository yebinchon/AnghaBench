
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWBUFFERSARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDrawBuffersARB ;

__attribute__((used)) static int LoadExt_ARB_draw_buffers()
{
 int numFailed = 0;
 _funcptr_glDrawBuffersARB = (PFNGLDRAWBUFFERSARBPROC)IntGetProcAddress("glDrawBuffersARB");
 if(!_funcptr_glDrawBuffersARB) ++numFailed;
 return numFailed;
}
