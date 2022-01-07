
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* nfsnode_t ;
struct TYPE_5__ {int n_lock; scalar_t__ n_hflag; } ;


 int ENOENT ;
 int FSDBG_BOT (int,TYPE_1__*,int,int ,int ) ;
 int FSDBG_TOP (int,TYPE_1__*,int,int ,int ) ;
 scalar_t__ NHHASHED ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

int
nfs_node_lock_internal(nfsnode_t np, int force)
{
 FSDBG_TOP(268, np, force, 0, 0);
 lck_mtx_lock(&np->n_lock);
 if (!force && !(np->n_hflag && NHHASHED)) {
  FSDBG_BOT(268, np, 0xdead, 0, 0);
  lck_mtx_unlock(&np->n_lock);
  return (ENOENT);
 }
 FSDBG_BOT(268, np, force, 0, 0);
 return (0);
}
