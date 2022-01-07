
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SVgObj ;
typedef int SDbObj ;


 int mgmtAddVgroupIntoDbTail (int *,int *) ;
 int mgmtRemoveVgroupFromDb (int *,int *) ;

int mgmtMoveVgroupToTail(SDbObj *pDb, SVgObj *pVgroup) {
  mgmtRemoveVgroupFromDb(pDb, pVgroup);
  mgmtAddVgroupIntoDbTail(pDb, pVgroup);

  return 0;
}
