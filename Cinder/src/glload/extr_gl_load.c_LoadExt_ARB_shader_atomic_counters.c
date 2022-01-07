
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glGetActiveAtomicCounterBufferiv ;

__attribute__((used)) static int LoadExt_ARB_shader_atomic_counters()
{
 int numFailed = 0;
 _funcptr_glGetActiveAtomicCounterBufferiv = (PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC)IntGetProcAddress("glGetActiveAtomicCounterBufferiv");
 if(!_funcptr_glGetActiveAtomicCounterBufferiv) ++numFailed;
 return numFailed;
}
