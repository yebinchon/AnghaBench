
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_flag; } ;


 int OSBitOrAtomic (int,int*) ;
 int P_PROFIL ;

void
startprofclock(struct proc *p)
{
 if ((p->p_flag & P_PROFIL) == 0)
  OSBitOrAtomic(P_PROFIL, &p->p_flag);
}
