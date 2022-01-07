
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLFLUSHSTATICDATAIBMPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glFlushStaticDataIBM ;

__attribute__((used)) static int LoadExt_IBM_static_data()
{
 int numFailed = 0;
 _funcptr_glFlushStaticDataIBM = (PFNGLFLUSHSTATICDATAIBMPROC)IntGetProcAddress("glFlushStaticDataIBM");
 if(!_funcptr_glFlushStaticDataIBM) ++numFailed;
 return numFailed;
}
