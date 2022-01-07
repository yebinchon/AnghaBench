
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int enabled ;


 int T_SKIP (char*) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static void
check_exc_resource_threads_enabled()
{
 int err;
 int enabled;
 size_t enabled_size = sizeof(enabled);
 err = sysctlbyname("kern.exc_resource_threads_enabled", &enabled, &enabled_size, ((void*)0), 0);

 if (err || !enabled)
  T_SKIP("EXC_RESOURCE RESOURCE_TYPE_THREADS not enabled on this system");

}
