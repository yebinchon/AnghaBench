
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct work_interval {int dummy; } ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_6__ {scalar_t__ ip_kobject; } ;


 scalar_t__ IKOT_WORK_INTERVAL ;
 int IP_VALID (TYPE_1__*) ;
 int ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int wi_retain (struct work_interval*) ;

__attribute__((used)) static struct work_interval *
work_interval_port_convert_locked(ipc_port_t port)
{
 struct work_interval *work_interval = ((void*)0);

 if (!IP_VALID(port))
  return ((void*)0);

 if (!ip_active(port))
  return ((void*)0);

 if (IKOT_WORK_INTERVAL != ip_kotype(port))
  return ((void*)0);

 work_interval = (struct work_interval *)port->ip_kobject;

 wi_retain(work_interval);

 return work_interval;
}
