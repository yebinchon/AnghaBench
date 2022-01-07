
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct pgrp {int dummy; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_9__ {int p_listflag; int p_children; int p_childrencnt; scalar_t__ p_xhighbits; int p_uniqueid; int p_puniqueid; int p_pid; int p_ppid; struct TYPE_9__* p_pptr; int p_evlist; } ;


 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int P_LIST_INCREATE ;
 int TAILQ_INIT (int *) ;
 int TRUE ;
 int allproc ;
 int memorystatus_add (TYPE_1__*,int ) ;
 int p_list ;
 int p_sibling ;
 int pg_rele (struct pgrp*) ;
 int pgrp_add (struct pgrp*,TYPE_1__*,TYPE_1__*) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 struct pgrp* proc_pgrp (TYPE_1__*) ;

void
pinsertchild(proc_t parent, proc_t child)
{
 struct pgrp * pg;

 LIST_INIT(&child->p_children);
 TAILQ_INIT(&child->p_evlist);
 child->p_pptr = parent;
 child->p_ppid = parent->p_pid;
 child->p_puniqueid = parent->p_uniqueid;
 child->p_xhighbits = 0;

 pg = proc_pgrp(parent);
 pgrp_add(pg, parent, child);
 pg_rele(pg);

 proc_list_lock();





 parent->p_childrencnt++;
 LIST_INSERT_HEAD(&parent->p_children, child, p_sibling);

 LIST_INSERT_HEAD(&allproc, child, p_list);

 child->p_listflag &= ~P_LIST_INCREATE;

 proc_list_unlock();
}
