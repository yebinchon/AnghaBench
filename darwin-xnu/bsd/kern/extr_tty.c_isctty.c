
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tty {struct session* t_session; } ;
struct session {int dummy; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_4__ {int p_flag; } ;


 int P_CONTROLT ;
 struct session* proc_session (TYPE_1__*) ;
 int session_rele (struct session*) ;

__attribute__((used)) static int
isctty(proc_t p, struct tty *tp)
{
 int retval;
 struct session * sessp;

 sessp = proc_session(p);
 retval = (sessp == tp->t_session && p->p_flag & P_CONTROLT);
 session_rele(sessp);
 return(retval);
}
