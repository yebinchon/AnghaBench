
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int supported ;


 int T_SKIP (char*) ;
 int T_WITH_ERRNO ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static void
skip_if_unsupported(void)
{
 int r;
 int supported = 0;
 size_t supported_size = sizeof(supported);

 r = sysctlbyname("kern.monotonic.supported", &supported, &supported_size,
   ((void*)0), 0);
 if (r < 0) {
  T_WITH_ERRNO;
  T_SKIP("could not find \"kern.monotonic.supported\" sysctl");
 }

 if (!supported) {
  T_SKIP("monotonic is not supported on this platform");
 }
}
