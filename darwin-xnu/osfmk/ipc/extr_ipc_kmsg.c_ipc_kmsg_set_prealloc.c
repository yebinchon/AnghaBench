
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ipc_port_t ;
typedef TYPE_1__* ipc_kmsg_t ;
struct TYPE_4__ {scalar_t__ ikm_prealloc; scalar_t__ ikm_turnstile; } ;


 scalar_t__ IP_NULL ;
 int IP_SET_PREALLOC (int ,TYPE_1__*) ;
 scalar_t__ TURNSTILE_NULL ;
 int assert (int) ;
 scalar_t__ port_send_turnstile (int ) ;

void
ipc_kmsg_set_prealloc(
 ipc_kmsg_t kmsg,
 ipc_port_t port)
{
 assert(kmsg->ikm_prealloc == IP_NULL);

 kmsg->ikm_prealloc = IP_NULL;

 assert(port_send_turnstile(port) == TURNSTILE_NULL);
 kmsg->ikm_turnstile = TURNSTILE_NULL;
 IP_SET_PREALLOC(port, kmsg);
}
