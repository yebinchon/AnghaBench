
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct clist {scalar_t__ c_cc; int* c_cf; int* c_cs; int* c_ce; int* c_cl; scalar_t__* c_cq; } ;


 int TTY_QUOTE ;
 scalar_t__ isset (scalar_t__*,int) ;

int
getc(struct clist *clp)
{
 int c = -1;

 if (clp->c_cc == 0)
  goto out;

 c = *clp->c_cf & 0xff;
 if (clp->c_cq) {




  if (*(clp->c_cf - clp->c_cs + clp->c_cq))
   c |= TTY_QUOTE;

 }
 if (++clp->c_cf == clp->c_ce)
  clp->c_cf = clp->c_cs;
 if (--clp->c_cc == 0)
  clp->c_cf = clp->c_cl = (u_char *)0;
out:
 return c;
}
