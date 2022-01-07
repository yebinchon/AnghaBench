
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLIGLOOINTERFACESGIXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glIglooInterfaceSGIX ;

__attribute__((used)) static int LoadExt_SGIX_igloo_interface()
{
 int numFailed = 0;
 _funcptr_glIglooInterfaceSGIX = (PFNGLIGLOOINTERFACESGIXPROC)IntGetProcAddress("glIglooInterfaceSGIX");
 if(!_funcptr_glIglooInterfaceSGIX) ++numFailed;
 return numFailed;
}
