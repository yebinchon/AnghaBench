
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;


 int kperf_get_pet_idle_rate ;
 int kperf_set_pet_idle_rate ;
 int kperf_sysctl_get_set_int (struct sysctl_req*,int ,int ) ;

__attribute__((used)) static int
sysctl_pet_idle_rate(struct sysctl_req *req)
{
 return kperf_sysctl_get_set_int(req, kperf_get_pet_idle_rate,
  kperf_set_pet_idle_rate);
}
