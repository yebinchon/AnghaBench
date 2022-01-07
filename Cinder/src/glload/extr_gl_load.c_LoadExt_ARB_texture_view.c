
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXTUREVIEWPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTextureView ;

__attribute__((used)) static int LoadExt_ARB_texture_view()
{
 int numFailed = 0;
 _funcptr_glTextureView = (PFNGLTEXTUREVIEWPROC)IntGetProcAddress("glTextureView");
 if(!_funcptr_glTextureView) ++numFailed;
 return numFailed;
}
