
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLGETEXTENSIONSSTRINGEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglGetExtensionsStringEXT ;

__attribute__((used)) static int LoadExt_EXT_extensions_string()
{
 int numFailed = 0;
 _funcptr_wglGetExtensionsStringEXT = (PFNWGLGETEXTENSIONSSTRINGEXTPROC)IntGetProcAddress("wglGetExtensionsStringEXT");
 if(!_funcptr_wglGetExtensionsStringEXT) ++numFailed;
 return numFailed;
}
