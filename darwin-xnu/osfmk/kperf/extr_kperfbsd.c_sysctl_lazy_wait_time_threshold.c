
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;


 int kperf_lazy_get_wait_time_threshold ;
 int kperf_lazy_set_wait_time_threshold ;
 int kperf_sysctl_get_set_uint64 (struct sysctl_req*,int ,int ) ;

__attribute__((used)) static int
sysctl_lazy_wait_time_threshold(struct sysctl_req *req)
{
 return kperf_sysctl_get_set_uint64(req, kperf_lazy_get_wait_time_threshold,
  kperf_lazy_set_wait_time_threshold);
}
