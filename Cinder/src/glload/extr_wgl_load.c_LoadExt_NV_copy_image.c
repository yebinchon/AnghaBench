
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLCOPYIMAGESUBDATANVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglCopyImageSubDataNV ;

__attribute__((used)) static int LoadExt_NV_copy_image()
{
 int numFailed = 0;
 _funcptr_wglCopyImageSubDataNV = (PFNWGLCOPYIMAGESUBDATANVPROC)IntGetProcAddress("wglCopyImageSubDataNV");
 if(!_funcptr_wglCopyImageSubDataNV) ++numFailed;
 return numFailed;
}
