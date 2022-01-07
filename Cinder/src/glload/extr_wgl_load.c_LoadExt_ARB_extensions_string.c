
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLGETEXTENSIONSSTRINGARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglGetExtensionsStringARB ;

__attribute__((used)) static int LoadExt_ARB_extensions_string()
{
 int numFailed = 0;
 _funcptr_wglGetExtensionsStringARB = (PFNWGLGETEXTENSIONSSTRINGARBPROC)IntGetProcAddress("wglGetExtensionsStringARB");
 if(!_funcptr_wglGetExtensionsStringARB) ++numFailed;
 return numFailed;
}
