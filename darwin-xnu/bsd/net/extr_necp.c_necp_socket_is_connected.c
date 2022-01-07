
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inpcb {TYPE_1__* inp_socket; } ;
struct TYPE_2__ {int so_state; } ;


 int SS_ISCONNECTED ;
 int SS_ISCONNECTING ;
 int SS_ISDISCONNECTING ;

__attribute__((used)) static inline bool
necp_socket_is_connected(struct inpcb *inp)
{
 return (inp->inp_socket->so_state & (SS_ISCONNECTING | SS_ISCONNECTED | SS_ISDISCONNECTING));
}
