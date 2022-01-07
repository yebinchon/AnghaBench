
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_10__ {size_t vnode; scalar_t__ lastKeyOnFile; } ;
struct TYPE_9__ {int fileId; } ;
struct TYPE_8__ {scalar_t__ numOfFiles; int cfg; int fileId; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SQuery ;
typedef TYPE_3__ SMeterObj ;


 scalar_t__ getOldestKey (scalar_t__,int ,int *) ;
 int getQueryRange (TYPE_2__*,scalar_t__*,scalar_t__*) ;
 TYPE_1__* vnodeList ;

bool hasDataInDisk(SQuery *pQuery, SMeterObj *pMeterObj) {
  SVnodeObj *pVnode = &vnodeList[pMeterObj->vnode];
  if (pVnode->numOfFiles <= 0) {
    pQuery->fileId = -1;
    return 0;
  }

  int64_t latestKey = pMeterObj->lastKeyOnFile;
  int64_t oldestKey = getOldestKey(pVnode->numOfFiles, pVnode->fileId, &pVnode->cfg);

  TSKEY min, max;
  getQueryRange(pQuery, &min, &max);


  if ((min > latestKey) || (max < oldestKey)) {
    pQuery->fileId = -1;
    return 0;
  }

  return 1;
}
