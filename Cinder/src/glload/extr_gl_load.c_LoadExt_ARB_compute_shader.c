
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDISPATCHCOMPUTEPROC ;
typedef scalar_t__ PFNGLDISPATCHCOMPUTEINDIRECTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDispatchCompute ;
 scalar_t__ _funcptr_glDispatchComputeIndirect ;

__attribute__((used)) static int LoadExt_ARB_compute_shader()
{
 int numFailed = 0;
 _funcptr_glDispatchCompute = (PFNGLDISPATCHCOMPUTEPROC)IntGetProcAddress("glDispatchCompute");
 if(!_funcptr_glDispatchCompute) ++numFailed;
 _funcptr_glDispatchComputeIndirect = (PFNGLDISPATCHCOMPUTEINDIRECTPROC)IntGetProcAddress("glDispatchComputeIndirect");
 if(!_funcptr_glDispatchComputeIndirect) ++numFailed;
 return numFailed;
}
