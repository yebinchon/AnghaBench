
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* nfsnode_t ;
struct TYPE_4__ {int n_lock; } ;


 int FSDBG (int,TYPE_1__*,int ,int ,int ) ;
 int current_thread () ;
 int lck_mtx_unlock (int *) ;

void
nfs_node_unlock(nfsnode_t np)
{
 FSDBG(269, np, current_thread(), 0, 0);
 lck_mtx_unlock(&np->n_lock);
}
