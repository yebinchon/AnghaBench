
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXGETPROCADDRESSARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXGetProcAddressARB ;

__attribute__((used)) static int LoadExt_ARB_get_proc_address()
{
 int numFailed = 0;
 _funcptr_glXGetProcAddressARB = (PFNGLXGETPROCADDRESSARBPROC)IntGetProcAddress("glXGetProcAddressARB");
 if(!_funcptr_glXGetProcAddressARB) ++numFailed;
 return numFailed;
}
