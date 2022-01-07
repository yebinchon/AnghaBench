
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;


 int kperf_sysctl_get_set_unsigned_uint32 (struct sysctl_req*,int ,int ) ;
 int kperf_timer_get_action ;
 int kperf_timer_set_action ;

__attribute__((used)) static int
sysctl_timer_action(struct sysctl_req *req)
{
 return kperf_sysctl_get_set_unsigned_uint32(req, kperf_timer_get_action,
  kperf_timer_set_action);
}
