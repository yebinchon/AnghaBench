
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
typedef scalar_t__ UNDReplyRef ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;


 scalar_t__ IKOT_UND_REPLY ;
 scalar_t__ IP_VALID (TYPE_1__*) ;
 scalar_t__ UND_REPLY_NULL ;
 int assert (int) ;
 int ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;

UNDReplyRef
convert_port_to_UNDReply(
 ipc_port_t port)
{
 if (IP_VALID(port)) {
  UNDReplyRef reply;

  ip_lock(port);
  if (!ip_active(port) || (ip_kotype(port) != IKOT_UND_REPLY)) {
   ip_unlock(port);
   return UND_REPLY_NULL;
  }
  reply = (UNDReplyRef) port->ip_kobject;
  assert(reply != UND_REPLY_NULL);
  ip_unlock(port);
  return reply;
 }
 return UND_REPLY_NULL;
}
