
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {struct pgrp* t_pgrp; } ;
struct pgrp {int pg_listflags; int pg_refcount; } ;


 int PGRP_FLAG_DEAD ;
 struct pgrp* PGRP_NULL ;
 int panic (char*) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

struct pgrp *
tty_pgrp(struct tty * tp)
{
 struct pgrp * pg = PGRP_NULL;

 proc_list_lock();
 pg = tp->t_pgrp;

 if (pg != PGRP_NULL) {
  if ((pg->pg_listflags & PGRP_FLAG_DEAD) != 0)
   panic("tty_pgrp: ref being povided for dead pgrp");
  pg->pg_refcount++;
 }
 proc_list_unlock();

 return(pg);
}
