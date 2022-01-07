
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;


 int T_ASSERT_POSIX_ZERO (int ,char*,char const*) ;
 int T_PERF (char const*,int,char const*,char const*) ;
 int sysctlbyname (char const*,int*,size_t*,int *,int ) ;

void record_perfcontrol_stats(const char *sysctlname, const char *units, const char *info)
{
    int data = 0;
    size_t data_size = sizeof(data);
    T_ASSERT_POSIX_ZERO(sysctlbyname(sysctlname,
     &data, &data_size, ((void*)0), 0),
     "%s", sysctlname);
    T_PERF(info, data, units, info);
}
