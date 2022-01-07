
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ncpu ;


 int T_ASSERT_POSIX_SUCCESS (int ,char*) ;
 int T_QUIET ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static int get_ncpu(void)
{
 int ncpu;
 size_t length = sizeof(ncpu);

 T_QUIET; T_ASSERT_POSIX_SUCCESS(sysctlbyname("hw.ncpu", &ncpu, &length, ((void*)0), 0),
   "failed to query hw.ncpu");
 return ncpu;
}
