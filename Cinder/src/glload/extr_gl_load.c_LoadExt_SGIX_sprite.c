
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSPRITEPARAMETERIVSGIXPROC ;
typedef scalar_t__ PFNGLSPRITEPARAMETERISGIXPROC ;
typedef scalar_t__ PFNGLSPRITEPARAMETERFVSGIXPROC ;
typedef scalar_t__ PFNGLSPRITEPARAMETERFSGIXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glSpriteParameterfSGIX ;
 scalar_t__ _funcptr_glSpriteParameterfvSGIX ;
 scalar_t__ _funcptr_glSpriteParameteriSGIX ;
 scalar_t__ _funcptr_glSpriteParameterivSGIX ;

__attribute__((used)) static int LoadExt_SGIX_sprite()
{
 int numFailed = 0;
 _funcptr_glSpriteParameterfSGIX = (PFNGLSPRITEPARAMETERFSGIXPROC)IntGetProcAddress("glSpriteParameterfSGIX");
 if(!_funcptr_glSpriteParameterfSGIX) ++numFailed;
 _funcptr_glSpriteParameterfvSGIX = (PFNGLSPRITEPARAMETERFVSGIXPROC)IntGetProcAddress("glSpriteParameterfvSGIX");
 if(!_funcptr_glSpriteParameterfvSGIX) ++numFailed;
 _funcptr_glSpriteParameteriSGIX = (PFNGLSPRITEPARAMETERISGIXPROC)IntGetProcAddress("glSpriteParameteriSGIX");
 if(!_funcptr_glSpriteParameteriSGIX) ++numFailed;
 _funcptr_glSpriteParameterivSGIX = (PFNGLSPRITEPARAMETERIVSGIXPROC)IntGetProcAddress("glSpriteParameterivSGIX");
 if(!_funcptr_glSpriteParameterivSGIX) ++numFailed;
 return numFailed;
}
