
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glRenderbufferStorageMultisampleEXT ;

__attribute__((used)) static int LoadExt_EXT_framebuffer_multisample()
{
 int numFailed = 0;
 _funcptr_glRenderbufferStorageMultisampleEXT = (PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC)IntGetProcAddress("glRenderbufferStorageMultisampleEXT");
 if(!_funcptr_glRenderbufferStorageMultisampleEXT) ++numFailed;
 return numFailed;
}
