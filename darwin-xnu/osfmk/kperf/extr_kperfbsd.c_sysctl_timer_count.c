
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;


 int kperf_sysctl_get_set_uint32 (struct sysctl_req*,int ,int ) ;
 int kperf_timer_get_count ;
 int kperf_timer_set_count ;

__attribute__((used)) static int
sysctl_timer_count(struct sysctl_req *req)
{
 return kperf_sysctl_get_set_uint32(req, kperf_timer_get_count,
  kperf_timer_set_count);
}
