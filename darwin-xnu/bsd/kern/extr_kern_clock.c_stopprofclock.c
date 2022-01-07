
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct proc {int p_flag; } ;


 int OSBitAndAtomic (int ,int*) ;
 int P_PROFIL ;

void
stopprofclock(struct proc *p)
{
 if (p->p_flag & P_PROFIL)
  OSBitAndAtomic(~((uint32_t)P_PROFIL), &p->p_flag);
}
