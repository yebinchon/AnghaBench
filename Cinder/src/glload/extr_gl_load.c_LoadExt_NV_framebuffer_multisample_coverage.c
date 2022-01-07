
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glRenderbufferStorageMultisampleCoverageNV ;

__attribute__((used)) static int LoadExt_NV_framebuffer_multisample_coverage()
{
 int numFailed = 0;
 _funcptr_glRenderbufferStorageMultisampleCoverageNV = (PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC)IntGetProcAddress("glRenderbufferStorageMultisampleCoverageNV");
 if(!_funcptr_glRenderbufferStorageMultisampleCoverageNV) ++numFailed;
 return numFailed;
}
