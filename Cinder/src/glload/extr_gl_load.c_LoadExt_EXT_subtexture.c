
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXSUBIMAGE2DEXTPROC ;
typedef scalar_t__ PFNGLTEXSUBIMAGE1DEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTexSubImage1DEXT ;
 scalar_t__ _funcptr_glTexSubImage2DEXT ;

__attribute__((used)) static int LoadExt_EXT_subtexture()
{
 int numFailed = 0;
 _funcptr_glTexSubImage1DEXT = (PFNGLTEXSUBIMAGE1DEXTPROC)IntGetProcAddress("glTexSubImage1DEXT");
 if(!_funcptr_glTexSubImage1DEXT) ++numFailed;
 _funcptr_glTexSubImage2DEXT = (PFNGLTEXSUBIMAGE2DEXTPROC)IntGetProcAddress("glTexSubImage2DEXT");
 if(!_funcptr_glTexSubImage2DEXT) ++numFailed;
 return numFailed;
}
