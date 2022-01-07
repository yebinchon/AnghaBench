
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int maxSessions; } ;
struct TYPE_7__ {TYPE_1__ cfg; } ;
struct TYPE_6__ {int numOfVnodes; int vgId; int ** meterList; int idPool; int dbName; } ;
typedef TYPE_2__ SVgObj ;
typedef int STabObj ;
typedef TYPE_3__ SDbObj ;


 int mPrint (char*,int ,int,int) ;
 int mTrace (char*,int ,int ) ;
 TYPE_3__* mgmtGetDb (int ) ;
 int mgmtVgroupActionReset (void*,char*,int,int*) ;
 scalar_t__ realloc (int **,int) ;
 int taosIdPoolMaxSize (int ) ;
 int taosUpdateIdPool (int ,int) ;

void *mgmtVgroupActionUpdate(void *row, char *str, int size, int *ssize) {
  mgmtVgroupActionReset(row, str, size, ssize);
  SVgObj *pVgroup = (SVgObj *)row;
  int oldTables = taosIdPoolMaxSize(pVgroup->idPool);

  SDbObj *pDb = mgmtGetDb(pVgroup->dbName);
  if (pDb != ((void*)0)) {
    if (pDb->cfg.maxSessions != oldTables) {
      mPrint("vgroup:%d tables change from %d to %d", pVgroup->vgId, oldTables, pDb->cfg.maxSessions);
      taosUpdateIdPool(pVgroup->idPool, pDb->cfg.maxSessions);
      int size = sizeof(STabObj *) * pDb->cfg.maxSessions;
      pVgroup->meterList = (STabObj **)realloc(pVgroup->meterList, size);
    }
  }

  mTrace("vgroup:%d update, numOfVnode:%d", pVgroup->vgId, pVgroup->numOfVnodes);

  return ((void*)0);
}
