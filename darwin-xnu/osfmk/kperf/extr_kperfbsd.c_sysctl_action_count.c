
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;


 int kperf_action_get_count ;
 int kperf_action_set_count ;
 int kperf_sysctl_get_set_uint32 (struct sysctl_req*,int ,int ) ;

__attribute__((used)) static int
sysctl_action_count(struct sysctl_req *req)
{
 return kperf_sysctl_get_set_uint32(req, kperf_action_get_count,
  kperf_action_set_count);
}
