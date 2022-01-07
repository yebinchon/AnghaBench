
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;


 int kperf_sampling_set ;
 int kperf_sampling_status ;
 int kperf_sysctl_get_set_uint32 (struct sysctl_req*,int ,int ) ;

__attribute__((used)) static int
sysctl_sampling(struct sysctl_req *req)
{
 return kperf_sysctl_get_set_uint32(req, kperf_sampling_status,
  kperf_sampling_set);
}
