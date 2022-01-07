
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCOPYCOLORSUBTABLEEXTPROC ;
typedef scalar_t__ PFNGLCOLORSUBTABLEEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glColorSubTableEXT ;
 scalar_t__ _funcptr_glCopyColorSubTableEXT ;

__attribute__((used)) static int LoadExt_EXT_color_subtable()
{
 int numFailed = 0;
 _funcptr_glColorSubTableEXT = (PFNGLCOLORSUBTABLEEXTPROC)IntGetProcAddress("glColorSubTableEXT");
 if(!_funcptr_glColorSubTableEXT) ++numFailed;
 _funcptr_glCopyColorSubTableEXT = (PFNGLCOPYCOLORSUBTABLEEXTPROC)IntGetProcAddress("glCopyColorSubTableEXT");
 if(!_funcptr_glCopyColorSubTableEXT) ++numFailed;
 return numFailed;
}
