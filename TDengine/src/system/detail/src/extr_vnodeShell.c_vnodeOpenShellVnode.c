
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {double maxSessions; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;
typedef TYPE_1__ SVnodeCfg ;
typedef int SShellObj ;


 int MAX (double,int const) ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ calloc (int,size_t) ;
 int dError (char*,int,size_t) ;
 int pShellServer ;
 int * rpcQhandle ;
 int ** shellList ;
 scalar_t__ taosOpenRpcChannWithQ (int ,int,int,int ) ;
 int tsMaxQueues ;
 TYPE_2__* vnodeList ;

int vnodeOpenShellVnode(int vnode) {
  const int32_t MIN_NUM_OF_SESSIONS = 300;

  SVnodeCfg *pCfg = &vnodeList[vnode].cfg;
  int32_t sessions = (int32_t) MAX(pCfg->maxSessions * 1.1, MIN_NUM_OF_SESSIONS);

  size_t size = sessions * sizeof(SShellObj);
  shellList[vnode] = (SShellObj *)calloc(1, size);
  if (shellList[vnode] == ((void*)0)) {
    dError("vid:%d failed to allocate shellObj, size:%d", vnode, size);
    return -1;
  }

  if(taosOpenRpcChannWithQ(pShellServer, vnode, sessions, rpcQhandle[(vnode+1)%tsMaxQueues]) != TSDB_CODE_SUCCESS) {
    return -1;
  }

  return TSDB_CODE_SUCCESS;
}
