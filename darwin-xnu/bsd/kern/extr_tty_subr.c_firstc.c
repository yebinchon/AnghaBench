
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct clist {scalar_t__ c_cc; int* c_cf; int* c_cs; scalar_t__* c_cq; } ;


 int TTY_QUOTE ;
 scalar_t__ cc ;
 scalar_t__ isset (scalar_t__*,int) ;

u_char *
firstc(struct clist *clp, int *c)
{
 u_char *cp;

 cc = clp->c_cc;
 if (cc == 0)
  return ((void*)0);
 cp = clp->c_cf;
 *c = *cp & 0xff;
 if(clp->c_cq) {




  if (*(cp - clp->c_cs + clp->c_cq))
   *c |= TTY_QUOTE;

 }
 return clp->c_cf;
}
