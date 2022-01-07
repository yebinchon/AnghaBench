
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;


 int kperf_action_get_userdata ;
 int kperf_action_set_userdata ;
 int kperf_sysctl_get_set_unsigned_uint32 (struct sysctl_req*,int ,int ) ;

__attribute__((used)) static int
sysctl_action_userdata(struct sysctl_req *req)
{
 return kperf_sysctl_get_set_unsigned_uint32(req,
  kperf_action_get_userdata, kperf_action_set_userdata);
}
