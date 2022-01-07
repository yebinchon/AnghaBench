
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXRELEASETEXIMAGEEXTPROC ;
typedef scalar_t__ PFNGLXBINDTEXIMAGEEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXBindTexImageEXT ;
 scalar_t__ _funcptr_glXReleaseTexImageEXT ;

__attribute__((used)) static int LoadExt_EXT_texture_from_pixmap()
{
 int numFailed = 0;
 _funcptr_glXBindTexImageEXT = (PFNGLXBINDTEXIMAGEEXTPROC)IntGetProcAddress("glXBindTexImageEXT");
 if(!_funcptr_glXBindTexImageEXT) ++numFailed;
 _funcptr_glXReleaseTexImageEXT = (PFNGLXRELEASETEXIMAGEEXTPROC)IntGetProcAddress("glXReleaseTexImageEXT");
 if(!_funcptr_glXReleaseTexImageEXT) ++numFailed;
 return numFailed;
}
