
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int thread_t ;
struct timespec {int member_0; int member_1; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_7__ {int n_flag; int n_lock; } ;


 scalar_t__ ISSET (int ,int ) ;
 int NBUSY ;
 int NBUSYWANT ;
 int NFSTONMP (TYPE_1__*) ;
 scalar_t__ PZERO ;
 int SET (int ,int ) ;
 int msleep (TYPE_1__*,int *,scalar_t__,char*,struct timespec*) ;
 int nfs_node_lock (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int nfs_sigintr (int ,int *,int ,int ) ;

int
nfs_node_set_busy(nfsnode_t np, thread_t thd)
{
 struct timespec ts = { 2, 0 };
 int error;

 if ((error = nfs_node_lock(np)))
  return (error);
 while (ISSET(np->n_flag, NBUSY)) {
  SET(np->n_flag, NBUSYWANT);
  msleep(np, &np->n_lock, PZERO-1, "nfsbusywant", &ts);
  if ((error = nfs_sigintr(NFSTONMP(np), ((void*)0), thd, 0)))
   break;
 }
 if (!error)
  SET(np->n_flag, NBUSY);
 nfs_node_unlock(np);
 return (error);
}
