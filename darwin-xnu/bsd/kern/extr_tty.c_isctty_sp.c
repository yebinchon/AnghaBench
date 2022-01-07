
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty {struct session* t_session; } ;
struct session {int dummy; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_flag; } ;


 int P_CONTROLT ;

__attribute__((used)) static int
isctty_sp(proc_t p, struct tty *tp, struct session *sessp)
{
 return(sessp == tp->t_session && p->p_flag & P_CONTROLT);

}
