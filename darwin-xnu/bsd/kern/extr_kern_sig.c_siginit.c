
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_sigignore; } ;


 int NSIG ;
 int SA_IGNORE ;
 int SIGCONT ;
 int sigmask (int) ;
 int* sigprop ;

void
siginit(proc_t p)
{
 int i;

 for (i = 1; i < NSIG; i++)
  if (sigprop[i] & SA_IGNORE && i != SIGCONT)
   p->p_sigignore |= sigmask(i);
}
