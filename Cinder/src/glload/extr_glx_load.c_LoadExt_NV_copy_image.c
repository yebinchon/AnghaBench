
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXCOPYIMAGESUBDATANVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXCopyImageSubDataNV ;

__attribute__((used)) static int LoadExt_NV_copy_image()
{
 int numFailed = 0;
 _funcptr_glXCopyImageSubDataNV = (PFNGLXCOPYIMAGESUBDATANVPROC)IntGetProcAddress("glXCopyImageSubDataNV");
 if(!_funcptr_glXCopyImageSubDataNV) ++numFailed;
 return numFailed;
}
