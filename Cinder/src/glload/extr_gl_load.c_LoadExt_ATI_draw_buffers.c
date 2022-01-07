
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWBUFFERSATIPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDrawBuffersATI ;

__attribute__((used)) static int LoadExt_ATI_draw_buffers()
{
 int numFailed = 0;
 _funcptr_glDrawBuffersATI = (PFNGLDRAWBUFFERSATIPROC)IntGetProcAddress("glDrawBuffersATI");
 if(!_funcptr_glDrawBuffersATI) ++numFailed;
 return numFailed;
}
