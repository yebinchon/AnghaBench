
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int maxSessions; } ;
struct TYPE_9__ {TYPE_1__ cfg; } ;
struct TYPE_8__ {int vgId; int numOfVnodes; int vnodeGid; int idPool; scalar_t__ numOfMeters; int ** meterList; int dbName; } ;
typedef TYPE_2__ SVgObj ;
typedef int STabObj ;
typedef TYPE_3__ SDbObj ;


 scalar_t__ malloc (int) ;
 int memset (int **,int ,int) ;
 int mgmtAddVgroupIntoDb (TYPE_3__*,TYPE_2__*) ;
 TYPE_3__* mgmtGetDb (int ) ;
 int mgmtSetDnodeVgid (int ,int ,int ) ;
 int taosInitIdPool (int) ;

void *mgmtVgroupActionInsert(void *row, char *str, int size, int *ssize) {
  SVgObj *pVgroup = (SVgObj *)row;
  SDbObj *pDb = mgmtGetDb(pVgroup->dbName);

  if (pDb == ((void*)0)) return ((void*)0);

  int tsize = sizeof(STabObj *) * pDb->cfg.maxSessions;
  pVgroup->meterList = (STabObj **)malloc(tsize);
  memset(pVgroup->meterList, 0, tsize);
  pVgroup->numOfMeters = 0;
  pVgroup->idPool = taosInitIdPool(pDb->cfg.maxSessions);
  mgmtAddVgroupIntoDb(pDb, pVgroup);
  mgmtSetDnodeVgid(pVgroup->vnodeGid, pVgroup->numOfVnodes, pVgroup->vgId);

  return ((void*)0);
}
