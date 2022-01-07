
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
typedef TYPE_2__* ipc_kmsg_t ;
struct TYPE_9__ {int ikm_turnstile; } ;
struct TYPE_8__ {int ip_messages; } ;


 int IP_CLEAR_PREALLOC (TYPE_1__*,TYPE_2__*) ;
 int imq_lock (int *) ;
 int imq_unlock (int *) ;
 int set_port_send_turnstile (TYPE_1__*,int ) ;

void
ipc_kmsg_clear_prealloc(
 ipc_kmsg_t kmsg,
 ipc_port_t port)
{

 imq_lock(&port->ip_messages);

 IP_CLEAR_PREALLOC(port, kmsg);
 set_port_send_turnstile(port, kmsg->ikm_turnstile);
 imq_unlock(&port->ip_messages);
}
