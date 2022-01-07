
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;


 int kperf_kdebug_get_action ;
 int kperf_kdebug_set_action ;
 int kperf_sysctl_get_set_int (struct sysctl_req*,int ,int ) ;

__attribute__((used)) static int
sysctl_kdebug_action(struct sysctl_req *req)
{
 return kperf_sysctl_get_set_int(req, kperf_kdebug_get_action,
  kperf_kdebug_set_action);
}
