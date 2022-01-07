
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCOPYIMAGESUBDATANVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glCopyImageSubDataNV ;

__attribute__((used)) static int LoadExt_NV_copy_image()
{
 int numFailed = 0;
 _funcptr_glCopyImageSubDataNV = (PFNGLCOPYIMAGESUBDATANVPROC)IntGetProcAddress("glCopyImageSubDataNV");
 if(!_funcptr_glCopyImageSubDataNV) ++numFailed;
 return numFailed;
}
