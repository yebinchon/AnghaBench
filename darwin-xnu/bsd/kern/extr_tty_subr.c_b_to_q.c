
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct clist {scalar_t__ c_cc; scalar_t__ c_cs; scalar_t__ c_cf; scalar_t__ c_cl; scalar_t__ c_cn; int c_ce; int c_cq; } ;


 int bcopy (int const*,int,int) ;
 int bzero (int,int) ;
 scalar_t__ clalloc (struct clist*,int,int) ;
 int clrbits (int,int,int) ;
 int printf (char*) ;

int
b_to_q(const u_char *cp, int count, struct clist *clp)
{
 int cc;
 const u_char *p = cp;

 if (count <= 0)
  return 0;


 if (clp->c_cc == 0) {
  if (!clp->c_cs) {



   if(clalloc(clp, 1024, 1))
    goto out;
  }
  clp->c_cf = clp->c_cl = clp->c_cs;
 }

 if (clp->c_cc == clp->c_cn)
  goto out;


 while (count > 0 && clp->c_cc < clp->c_cn) {
  cc = clp->c_ce - clp->c_cl;
  if (clp->c_cf > clp->c_cl)
   cc = clp->c_cf - clp->c_cl;
  if (cc > count)
   cc = count;
  bcopy(p, clp->c_cl, cc);
  if (clp->c_cq) {



   bzero(clp->c_cl - clp->c_cs + clp->c_cq, cc);

  }
  p += cc;
  count -= cc;
  clp->c_cc += cc;
  clp->c_cl += cc;
  if (clp->c_cl == clp->c_ce)
   clp->c_cl = clp->c_cs;
 }
out:
 return count;
}
