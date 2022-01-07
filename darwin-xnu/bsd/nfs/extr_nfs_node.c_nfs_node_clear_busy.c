
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* nfsnode_t ;
struct TYPE_6__ {int n_flag; } ;


 int CLR (int ,int) ;
 int ISSET (int ,int) ;
 int NBUSY ;
 int NBUSYWANT ;
 int nfs_node_lock_force (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int wakeup (TYPE_1__*) ;

void
nfs_node_clear_busy(nfsnode_t np)
{
 int wanted;

 nfs_node_lock_force(np);
 wanted = ISSET(np->n_flag, NBUSYWANT);
 CLR(np->n_flag, NBUSY|NBUSYWANT);
 nfs_node_unlock(np);
 if (wanted)
  wakeup(np);
}
