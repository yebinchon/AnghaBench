
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int socket_t ;


 int socket_lock (int ,int) ;
 int socket_set_traffic_mgt_flags_locked (int ,int ) ;
 int socket_unlock (int ,int) ;

void
socket_set_traffic_mgt_flags(socket_t sock, u_int8_t flags)
{
 socket_lock(sock, 1);
 socket_set_traffic_mgt_flags_locked(sock, flags);
 socket_unlock(sock, 1);
}
