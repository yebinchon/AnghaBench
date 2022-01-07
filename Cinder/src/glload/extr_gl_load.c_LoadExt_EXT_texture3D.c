
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXSUBIMAGE3DEXTPROC ;
typedef scalar_t__ PFNGLTEXIMAGE3DEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTexImage3DEXT ;
 scalar_t__ _funcptr_glTexSubImage3DEXT ;

__attribute__((used)) static int LoadExt_EXT_texture3D()
{
 int numFailed = 0;
 _funcptr_glTexImage3DEXT = (PFNGLTEXIMAGE3DEXTPROC)IntGetProcAddress("glTexImage3DEXT");
 if(!_funcptr_glTexImage3DEXT) ++numFailed;
 _funcptr_glTexSubImage3DEXT = (PFNGLTEXSUBIMAGE3DEXTPROC)IntGetProcAddress("glTexSubImage3DEXT");
 if(!_funcptr_glTexSubImage3DEXT) ++numFailed;
 return numFailed;
}
