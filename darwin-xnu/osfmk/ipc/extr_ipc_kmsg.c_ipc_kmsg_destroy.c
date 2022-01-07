
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_kmsg_t ;


 scalar_t__ ipc_kmsg_delayed_destroy (int ) ;
 int ipc_kmsg_reap_delayed () ;

void
ipc_kmsg_destroy(
 ipc_kmsg_t kmsg)
{






 if (ipc_kmsg_delayed_destroy(kmsg))
  ipc_kmsg_reap_delayed();
}
