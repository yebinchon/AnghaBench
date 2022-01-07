
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inpcb {int dummy; } ;
struct ifnet {char* if_xname; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int p_pid; } ;


 scalar_t__ TRUE ;
 scalar_t__ _inp_restricted_send (struct inpcb*,struct ifnet*) ;
 TYPE_1__* current_proc () ;
 scalar_t__ log_restricted ;
 int printf (char*,int,char*,char*) ;
 char* proc_best_name (TYPE_1__*) ;

boolean_t
inp_restricted_send(struct inpcb *inp, struct ifnet *ifp)
{
 boolean_t ret;

 ret = _inp_restricted_send(inp, ifp);
 if (ret == TRUE && log_restricted) {
  printf("pid %d (%s) is unable to transmit packets on %s\n",
      current_proc()->p_pid, proc_best_name(current_proc()),
      ifp->if_xname);
 }
 return (ret);
}
