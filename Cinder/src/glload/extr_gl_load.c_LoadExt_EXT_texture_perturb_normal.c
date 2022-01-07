
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXTURENORMALEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTextureNormalEXT ;

__attribute__((used)) static int LoadExt_EXT_texture_perturb_normal()
{
 int numFailed = 0;
 _funcptr_glTextureNormalEXT = (PFNGLTEXTURENORMALEXTPROC)IntGetProcAddress("glTextureNormalEXT");
 if(!_funcptr_glTextureNormalEXT) ++numFailed;
 return numFailed;
}
