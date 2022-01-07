
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dropStatus; } ;
typedef TYPE_1__ SDbObj ;


 scalar_t__ TSDB_DB_STATUS_DROPPING ;
 int dbSdb ;
 int mgmtDropDb (TYPE_1__*) ;
 void* sdbFetchRow (int ,void*,void**) ;

void mgmtMonitorDbDrop(void *unused, void *unusedt) {
  void * pNode = ((void*)0);
  SDbObj *pDb = ((void*)0);

  while (1) {
    pNode = sdbFetchRow(dbSdb, pNode, (void **)&pDb);
    if (pDb == ((void*)0)) break;
    if (pDb->dropStatus != TSDB_DB_STATUS_DROPPING) continue;
    mgmtDropDb(pDb);
    break;
  }
}
