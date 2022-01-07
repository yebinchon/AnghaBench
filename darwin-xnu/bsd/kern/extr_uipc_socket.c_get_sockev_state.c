
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct socket {int so_state; } ;


 int SOCKEV_CONNECTED ;
 int SOCKEV_DISCONNECTED ;
 int SS_ISCONNECTED ;
 int SS_ISDISCONNECTED ;

void
get_sockev_state(struct socket *so, u_int32_t *statep)
{
 u_int32_t state = *(statep);





 if (state != 0)
  return;

 if (so->so_state & SS_ISCONNECTED)
  state |= SOCKEV_CONNECTED;
 else
  state &= ~(SOCKEV_CONNECTED);
 state |= ((so->so_state & SS_ISDISCONNECTED) ? SOCKEV_DISCONNECTED : 0);
 *(statep) = state;
}
