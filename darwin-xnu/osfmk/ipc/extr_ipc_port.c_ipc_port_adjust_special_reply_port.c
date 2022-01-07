
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ipc_port_t ;
typedef int boolean_t ;


 int ip_lock (int ) ;
 int ipc_port_adjust_special_reply_port_locked (int ,int *,int ,int ) ;

void
ipc_port_adjust_special_reply_port(
 ipc_port_t special_reply_port,
 uint8_t flags,
 boolean_t get_turnstile)
{
 ip_lock(special_reply_port);
 ipc_port_adjust_special_reply_port_locked(special_reply_port, ((void*)0), flags, get_turnstile);

}
