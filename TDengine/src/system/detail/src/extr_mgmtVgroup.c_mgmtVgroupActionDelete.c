
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int meterList; int numOfVnodes; int vnodeGid; int dbName; } ;
typedef TYPE_1__ SVgObj ;
typedef int SDbObj ;


 int * mgmtGetDb (int ) ;
 int mgmtRemoveVgroupFromDb (int *,TYPE_1__*) ;
 int mgmtUnSetDnodeVgid (int ,int ) ;
 int tfree (int ) ;

void *mgmtVgroupActionDelete(void *row, char *str, int size, int *ssize) {
  SVgObj *pVgroup = (SVgObj *)row;
  SDbObj *pDb = mgmtGetDb(pVgroup->dbName);

  if (pDb != ((void*)0)) mgmtRemoveVgroupFromDb(pDb, pVgroup);
  mgmtUnSetDnodeVgid(pVgroup->vnodeGid, pVgroup->numOfVnodes);
  tfree(pVgroup->meterList);

  return ((void*)0);
}
