
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_2__* mig_object_t ;
typedef TYPE_3__* ipc_port_t ;
struct TYPE_13__ {scalar_t__ ip_kobject; } ;
struct TYPE_12__ {TYPE_1__* pVtbl; } ;
struct TYPE_11__ {int (* QueryInterface ) (int *,int const*,void**) ;} ;
typedef int MIGIID ;
typedef int IMIGObject ;


 scalar_t__ IKOT_MIG ;
 int IP_VALID (TYPE_3__*) ;
 int ip_active (TYPE_3__*) ;
 scalar_t__ ip_kotype (TYPE_3__*) ;
 int ip_lock (TYPE_3__*) ;
 int ip_unlock (TYPE_3__*) ;
 int stub1 (int *,int const*,void**) ;

mig_object_t
convert_port_to_mig_object(
 ipc_port_t port,
 const MIGIID *iid)
{
 mig_object_t mig_object;
 void *ppv;

 if (!IP_VALID(port))
  return ((void*)0);

 ip_lock(port);
 if (!ip_active(port) || (ip_kotype(port) != IKOT_MIG)) {
  ip_unlock(port);
  return ((void*)0);
 }





 ppv = ((void*)0);
 mig_object = (mig_object_t)port->ip_kobject;
 mig_object->pVtbl->QueryInterface((IMIGObject *)mig_object, iid, &ppv);
 ip_unlock(port);
 return (mig_object_t)ppv;
}
