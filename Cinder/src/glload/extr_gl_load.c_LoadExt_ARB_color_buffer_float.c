
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCLAMPCOLORARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glClampColorARB ;

__attribute__((used)) static int LoadExt_ARB_color_buffer_float()
{
 int numFailed = 0;
 _funcptr_glClampColorARB = (PFNGLCLAMPCOLORARBPROC)IntGetProcAddress("glClampColorARB");
 if(!_funcptr_glClampColorARB) ++numFailed;
 return numFailed;
}
