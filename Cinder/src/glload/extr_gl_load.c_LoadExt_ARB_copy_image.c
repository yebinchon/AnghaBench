
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCOPYIMAGESUBDATAPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glCopyImageSubData ;

__attribute__((used)) static int LoadExt_ARB_copy_image()
{
 int numFailed = 0;
 _funcptr_glCopyImageSubData = (PFNGLCOPYIMAGESUBDATAPROC)IntGetProcAddress("glCopyImageSubData");
 if(!_funcptr_glCopyImageSubData) ++numFailed;
 return numFailed;
}
