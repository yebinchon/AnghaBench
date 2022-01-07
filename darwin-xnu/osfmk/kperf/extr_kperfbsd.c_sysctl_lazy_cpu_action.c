
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;


 int kperf_lazy_get_cpu_action ;
 int kperf_lazy_set_cpu_action ;
 int kperf_sysctl_get_set_int (struct sysctl_req*,int ,int ) ;

__attribute__((used)) static int
sysctl_lazy_cpu_action(struct sysctl_req *req)
{
 return kperf_sysctl_get_set_int(req, kperf_lazy_get_cpu_action,
  kperf_lazy_set_cpu_action);
}
