
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct clist {int * c_cq; int * c_cs; int c_cn; } ;


 int FREE_ZONE (int *,int ,int ) ;
 int M_TTYS ;
 int QMEM (int ) ;

void
clfree(struct clist *clp)
{
 if(clp->c_cs)
  FREE_ZONE(clp->c_cs, clp->c_cn, M_TTYS);
 if(clp->c_cq)
  FREE_ZONE(clp->c_cq, QMEM(clp->c_cn), M_TTYS);
 clp->c_cs = clp->c_cq = (u_char *)0;
}
