
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLMAKECONTEXTCURRENTEXTPROC ;
typedef scalar_t__ PFNWGLGETCURRENTREADDCEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglGetCurrentReadDCEXT ;
 scalar_t__ _funcptr_wglMakeContextCurrentEXT ;

__attribute__((used)) static int LoadExt_EXT_make_current_read()
{
 int numFailed = 0;
 _funcptr_wglGetCurrentReadDCEXT = (PFNWGLGETCURRENTREADDCEXTPROC)IntGetProcAddress("wglGetCurrentReadDCEXT");
 if(!_funcptr_wglGetCurrentReadDCEXT) ++numFailed;
 _funcptr_wglMakeContextCurrentEXT = (PFNWGLMAKECONTEXTCURRENTEXTPROC)IntGetProcAddress("wglMakeContextCurrentEXT");
 if(!_funcptr_wglMakeContextCurrentEXT) ++numFailed;
 return numFailed;
}
