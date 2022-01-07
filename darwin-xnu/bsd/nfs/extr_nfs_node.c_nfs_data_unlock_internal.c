
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* nfsnode_t ;
struct TYPE_6__ {int * n_datalockowner; int n_flag; int n_datalock; } ;


 int FSDBG_BOT (int,TYPE_1__*,int *,int *,int ) ;
 int FSDBG_TOP (int,TYPE_1__*,int *,int *,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 int NUPDATESIZE ;
 int * current_thread () ;
 int lck_rw_done (int *) ;
 int nfs_data_update_size (TYPE_1__*,int) ;

void
nfs_data_unlock_internal(nfsnode_t np, int updatesize)
{
 int mine = (np->n_datalockowner == current_thread());
 FSDBG_TOP(271, np, np->n_datalockowner, current_thread(), 0);
 if (updatesize && mine && ISSET(np->n_flag, NUPDATESIZE))
  nfs_data_update_size(np, 1);
 np->n_datalockowner = ((void*)0);
 lck_rw_done(&np->n_datalock);
 if (updatesize && !mine && ISSET(np->n_flag, NUPDATESIZE))
  nfs_data_update_size(np, 0);
 FSDBG_BOT(271, np, np->n_datalockowner, current_thread(), 0);
}
