
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {scalar_t__ maxSessions; } ;
struct TYPE_6__ {int vnode; TYPE_1__ cfg; int accessState; } ;
typedef TYPE_2__ SVnodeObj ;


 int TSDB_CODE_SUCCESS ;
 int TSDB_VN_ALL_ACCCESS ;
 int dTrace (char*,int,int ) ;
 int dmutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tsMaxVnode ;
 int tsOpenVnodes ;
 int vnodeCalcOpenVnodes () ;
 TYPE_2__* vnodeList ;
 int vnodeOpenPeerVnode (int) ;
 int vnodeOpenShellVnode (int) ;
 int vnodeOpenStreams (TYPE_2__*,int *) ;

int vnodeOpenVnode(int vnode) {
  int32_t code = TSDB_CODE_SUCCESS;

  SVnodeObj *pVnode = vnodeList + vnode;

  pVnode->vnode = vnode;
  pVnode->accessState = TSDB_VN_ALL_ACCCESS;


  if (pVnode->cfg.maxSessions == 0) return 0;

  pthread_mutex_lock(&dmutex);



  if ((code = vnodeOpenShellVnode(vnode)) != TSDB_CODE_SUCCESS) {
    pthread_mutex_unlock(&dmutex);
    return code;
  }

  vnodeOpenPeerVnode(vnode);

  if (vnode > tsMaxVnode) tsMaxVnode = vnode;

  vnodeCalcOpenVnodes();

  pthread_mutex_unlock(&dmutex);


  vnodeOpenStreams(pVnode, ((void*)0));


  dTrace("vid:%d, vnode is opened, openVnodes:%d", vnode, tsOpenVnodes);

  return 0;
}
