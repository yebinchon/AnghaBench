
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
typedef TYPE_2__* ipc_port_t ;
struct TYPE_12__ {scalar_t__ ip_kobject; } ;
struct TYPE_11__ {int ref_count; } ;


 scalar_t__ IKOT_UPL ;
 int ip_active (TYPE_2__*) ;
 scalar_t__ ip_kotype (TYPE_2__*) ;
 int ip_lock (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 int upl_lock (TYPE_1__*) ;
 int upl_unlock (TYPE_1__*) ;

upl_t
convert_port_to_upl(
 ipc_port_t port)
{
 upl_t upl;

 ip_lock(port);
 if (!ip_active(port) || (ip_kotype(port) != IKOT_UPL)) {
   ip_unlock(port);
   return (upl_t)((void*)0);
 }
 upl = (upl_t) port->ip_kobject;
 ip_unlock(port);
 upl_lock(upl);
 upl->ref_count+=1;
 upl_unlock(upl);
 return upl;
}
