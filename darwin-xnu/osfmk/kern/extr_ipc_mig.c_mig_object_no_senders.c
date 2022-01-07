
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_3__* mig_object_t ;
typedef scalar_t__ mach_port_mscount_t ;
typedef TYPE_4__* ipc_port_t ;
typedef int boolean_t ;
struct TYPE_13__ {scalar_t__ imq_seqno; } ;
struct TYPE_16__ {scalar_t__ ip_mscount; TYPE_1__ ip_messages; scalar_t__ ip_kobject; int ip_sorights; } ;
struct TYPE_15__ {TYPE_2__* pVtbl; TYPE_4__* port; } ;
struct TYPE_14__ {int (* Release ) (int *) ;} ;
typedef int IMIGObject ;


 int FALSE ;
 TYPE_4__* IP_NULL ;
 int TRUE ;
 int assert (int) ;
 int ip_lock (TYPE_4__*) ;
 int ip_reference (TYPE_4__*) ;
 int ipc_port_destroy (TYPE_4__*) ;
 int ipc_port_nsrequest (TYPE_4__*,scalar_t__,TYPE_4__*,TYPE_4__**) ;
 int stub1 (int *) ;

boolean_t
mig_object_no_senders(
 ipc_port_t port,
 mach_port_mscount_t mscount)
{
 mig_object_t mig_object;

 ip_lock(port);
 if (port->ip_mscount > mscount) {
  ipc_port_t previous;
  port->ip_sorights++;
  ip_reference(port);
  ipc_port_nsrequest(port, mscount, port, &previous);


  assert(previous == IP_NULL);
  return (FALSE);
 }




 mig_object = (mig_object_t)port->ip_kobject;
 mig_object->port = IP_NULL;





 port->ip_mscount = 0;
 port->ip_messages.imq_seqno = 0;
 ipc_port_destroy(port);




 mig_object->pVtbl->Release((IMIGObject *)mig_object);
 return (TRUE);
}
