
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* nfsnode_t ;
struct TYPE_3__ {int n_openflags; int n_openlock; } ;


 int N_OPENBUSY ;
 int N_OPENWANT ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int panic (char*) ;
 int wakeup (int*) ;

void
nfs_open_state_clear_busy(nfsnode_t np)
{
 int wanted;

 lck_mtx_lock(&np->n_openlock);
 if (!(np->n_openflags & N_OPENBUSY))
  panic("nfs_open_state_clear_busy");
 wanted = (np->n_openflags & N_OPENWANT);
 np->n_openflags &= ~(N_OPENBUSY|N_OPENWANT);
 lck_mtx_unlock(&np->n_openlock);
 if (wanted)
  wakeup(&np->n_openflags);
}
