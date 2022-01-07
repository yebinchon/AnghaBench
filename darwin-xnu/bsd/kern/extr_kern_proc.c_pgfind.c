
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgrp {int pg_listflags; int pg_refcount; } ;
typedef int pid_t ;


 int PGRP_FLAG_TERMINATE ;
 struct pgrp* PGRP_NULL ;
 struct pgrp* pgfind_internal (int ) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

struct pgrp *
pgfind(pid_t pgid)
{
 struct pgrp * pgrp;

 proc_list_lock();
 pgrp = pgfind_internal(pgid);
 if ((pgrp == ((void*)0)) || ((pgrp->pg_listflags & PGRP_FLAG_TERMINATE) != 0))
  pgrp = PGRP_NULL;
 else
  pgrp->pg_refcount++;
 proc_list_unlock();
 return(pgrp);
}
