
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ maxSessions; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;
typedef TYPE_2__ SVnodeObj ;


 void* vnodeCommitMultiToFile (TYPE_2__*,int ,scalar_t__) ;

void *vnodeCommitToFile(void *param) {
  SVnodeObj *pVnode = (SVnodeObj *)param;

  return vnodeCommitMultiToFile(pVnode, 0, pVnode->cfg.maxSessions - 1);
}
