
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDFUNCSEPARATEIARBPROC ;
typedef scalar_t__ PFNGLBLENDFUNCIARBPROC ;
typedef scalar_t__ PFNGLBLENDEQUATIONSEPARATEIARBPROC ;
typedef scalar_t__ PFNGLBLENDEQUATIONIARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBlendEquationSeparateiARB ;
 scalar_t__ _funcptr_glBlendEquationiARB ;
 scalar_t__ _funcptr_glBlendFuncSeparateiARB ;
 scalar_t__ _funcptr_glBlendFunciARB ;

__attribute__((used)) static int LoadExt_ARB_draw_buffers_blend()
{
 int numFailed = 0;
 _funcptr_glBlendEquationSeparateiARB = (PFNGLBLENDEQUATIONSEPARATEIARBPROC)IntGetProcAddress("glBlendEquationSeparateiARB");
 if(!_funcptr_glBlendEquationSeparateiARB) ++numFailed;
 _funcptr_glBlendEquationiARB = (PFNGLBLENDEQUATIONIARBPROC)IntGetProcAddress("glBlendEquationiARB");
 if(!_funcptr_glBlendEquationiARB) ++numFailed;
 _funcptr_glBlendFuncSeparateiARB = (PFNGLBLENDFUNCSEPARATEIARBPROC)IntGetProcAddress("glBlendFuncSeparateiARB");
 if(!_funcptr_glBlendFuncSeparateiARB) ++numFailed;
 _funcptr_glBlendFunciARB = (PFNGLBLENDFUNCIARBPROC)IntGetProcAddress("glBlendFunciARB");
 if(!_funcptr_glBlendFunciARB) ++numFailed;
 return numFailed;
}
