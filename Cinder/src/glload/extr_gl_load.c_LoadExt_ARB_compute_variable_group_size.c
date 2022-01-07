
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDISPATCHCOMPUTEGROUPSIZEARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDispatchComputeGroupSizeARB ;

__attribute__((used)) static int LoadExt_ARB_compute_variable_group_size()
{
 int numFailed = 0;
 _funcptr_glDispatchComputeGroupSizeARB = (PFNGLDISPATCHCOMPUTEGROUPSIZEARBPROC)IntGetProcAddress("glDispatchComputeGroupSizeARB");
 if(!_funcptr_glDispatchComputeGroupSizeARB) ++numFailed;
 return numFailed;
}
