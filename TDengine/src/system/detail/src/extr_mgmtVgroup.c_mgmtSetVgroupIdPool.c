
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int maxSessions; } ;
struct TYPE_11__ {TYPE_1__ cfg; int numOfTables; } ;
struct TYPE_10__ {scalar_t__ idPool; int numOfMeters; int dbName; } ;
typedef TYPE_2__ SVgObj ;
typedef TYPE_3__ SDbObj ;


 int mgmtAddVgroupIntoDb (TYPE_3__*,TYPE_2__*) ;
 int mgmtAddVgroupIntoDbTail (TYPE_3__*,TYPE_2__*) ;
 TYPE_3__* mgmtGetDb (int ) ;
 void* sdbFetchRow (int ,void*,void**) ;
 int taosIdPoolNumOfUsed (scalar_t__) ;
 int taosIdPoolSetFreeList (scalar_t__) ;
 int vgSdb ;

void mgmtSetVgroupIdPool() {
  void * pNode = ((void*)0);
  SVgObj *pVgroup = ((void*)0);
  SDbObj *pDb;

  while (1) {
    pNode = sdbFetchRow(vgSdb, pNode, (void **)&pVgroup);
    if (pVgroup == ((void*)0) || pVgroup->idPool == 0) break;

    taosIdPoolSetFreeList(pVgroup->idPool);
    pVgroup->numOfMeters = taosIdPoolNumOfUsed(pVgroup->idPool);

    pDb = mgmtGetDb(pVgroup->dbName);
    pDb->numOfTables += pVgroup->numOfMeters;
    if (pVgroup->numOfMeters >= pDb->cfg.maxSessions - 1)
      mgmtAddVgroupIntoDbTail(pDb, pVgroup);
    else
      mgmtAddVgroupIntoDb(pDb, pVgroup);
  }
}
