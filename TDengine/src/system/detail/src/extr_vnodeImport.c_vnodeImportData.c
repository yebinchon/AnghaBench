
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ commitInProcess; } ;
struct TYPE_14__ {scalar_t__ lastKey; scalar_t__ commit; int rows; int payload; } ;
struct TYPE_13__ {scalar_t__ lastKeyOnFile; size_t vnode; } ;
struct TYPE_12__ {scalar_t__ pCachePool; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SMeterObj ;
typedef TYPE_3__ SImportInfo ;
typedef TYPE_4__ SCachePool ;


 int vnodeImportStartToFile (TYPE_3__*,int ,int ) ;
 int vnodeImportWholeToCache (TYPE_3__*,int ,int ) ;
 int vnodeImportWholeToFile (TYPE_3__*,int ,int ) ;
 TYPE_1__* vnodeList ;
 int vnodeProcessCommitTimer (TYPE_1__*,int *) ;

int vnodeImportData(SMeterObj *pObj, SImportInfo *pImport) {
  int code = 0;

  if (pImport->lastKey > pObj->lastKeyOnFile) {
    code = vnodeImportWholeToCache(pImport, pImport->payload, pImport->rows);
  } else if (pImport->lastKey < pObj->lastKeyOnFile) {
    code = vnodeImportWholeToFile(pImport, pImport->payload, pImport->rows);
  } else {
    code = vnodeImportStartToFile(pImport, pImport->payload, pImport->rows);
  }

  SVnodeObj *pVnode = &vnodeList[pObj->vnode];
  SCachePool *pPool = (SCachePool *)pVnode->pCachePool;
  pPool->commitInProcess = 0;

  if (pImport->commit) vnodeProcessCommitTimer(pVnode, ((void*)0));

  return code;
}
