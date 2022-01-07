
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct socket {int (* so_event ) (struct socket*,int ,int ) ;int so_eventmask; int so_eventarg; } ;
typedef int caddr_t ;


 int stub1 (struct socket*,int ,int ) ;

void
soevupcall(struct socket *so, u_int32_t hint)
{
 if (so->so_event != ((void*)0)) {
  caddr_t so_eventarg = so->so_eventarg;

  hint &= so->so_eventmask;
  if (hint != 0)
   so->so_event(so, so_eventarg, hint);
 }
}
