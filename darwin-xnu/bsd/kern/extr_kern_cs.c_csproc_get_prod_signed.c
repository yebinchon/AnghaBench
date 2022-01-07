
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_csflags; } ;


 int CS_DEV_CODE ;

int
csproc_get_prod_signed(struct proc *p)
{
 return ((p->p_csflags & CS_DEV_CODE) == 0);
}
