
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLCREATECONTEXTATTRIBSARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglCreateContextAttribsARB ;

__attribute__((used)) static int LoadExt_ARB_create_context()
{
 int numFailed = 0;
 _funcptr_wglCreateContextAttribsARB = (PFNWGLCREATECONTEXTATTRIBSARBPROC)IntGetProcAddress("wglCreateContextAttribsARB");
 if(!_funcptr_wglCreateContextAttribsARB) ++numFailed;
 return numFailed;
}
