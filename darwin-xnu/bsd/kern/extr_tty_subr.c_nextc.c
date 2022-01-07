
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct clist {int* c_cf; scalar_t__ c_cc; int* c_ce; int* c_cs; scalar_t__* c_cq; } ;


 int TTY_QUOTE ;
 scalar_t__ cc ;
 scalar_t__ isset (scalar_t__*,int) ;

u_char *
nextc(struct clist *clp, u_char *cp, int *c)
{
 if (clp->c_cf == cp) {



  cc = clp->c_cc;
 }
 if (cc == 0 || cp == ((void*)0))
  return ((void*)0);
 if (--cc == 0)
  return ((void*)0);
 if (++cp == clp->c_ce)
  cp = clp->c_cs;
 *c = *cp & 0xff;
 if (clp->c_cq) {




  if (*(clp->c_cf - clp->c_cs + clp->c_cq))
   *c |= TTY_QUOTE;

 }
 return cp;
}
