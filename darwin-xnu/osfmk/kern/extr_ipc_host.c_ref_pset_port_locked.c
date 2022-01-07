
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ processor_set_t ;
typedef TYPE_1__* ipc_port_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {scalar_t__ ip_kobject; } ;


 scalar_t__ IKOT_PSET ;
 scalar_t__ IKOT_PSET_NAME ;
 scalar_t__ PROCESSOR_SET_NULL ;
 scalar_t__ TRUE ;
 scalar_t__ ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;

boolean_t
ref_pset_port_locked(ipc_port_t port, boolean_t matchn, processor_set_t *ppset)
{
 processor_set_t pset;

 pset = PROCESSOR_SET_NULL;
 if (ip_active(port) &&
  ((ip_kotype(port) == IKOT_PSET) ||
   (matchn && (ip_kotype(port) == IKOT_PSET_NAME)))) {
  pset = (processor_set_t) port->ip_kobject;
 }

 *ppset = pset;
 ip_unlock(port);

 return (TRUE);
}
