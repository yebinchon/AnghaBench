
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;


 int kperf_action_get_ucallstack_depth ;
 int kperf_action_set_ucallstack_depth ;
 int kperf_sysctl_get_set_unsigned_uint32 (struct sysctl_req*,int ,int ) ;

__attribute__((used)) static int
sysctl_action_ucallstack_depth(struct sysctl_req *req)
{
 return kperf_sysctl_get_set_unsigned_uint32(req,
  kperf_action_get_ucallstack_depth, kperf_action_set_ucallstack_depth);
}
