
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCREATESYNCFROMCLEVENTARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glCreateSyncFromCLeventARB ;

__attribute__((used)) static int LoadExt_ARB_cl_event()
{
 int numFailed = 0;
 _funcptr_glCreateSyncFromCLeventARB = (PFNGLCREATESYNCFROMCLEVENTARBPROC)IntGetProcAddress("glCreateSyncFromCLeventARB");
 if(!_funcptr_glCreateSyncFromCLeventARB) ++numFailed;
 return numFailed;
}
