
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SVgObj ;
typedef int SDbObj ;


 int mgmtAddVgroupIntoDb (int *,int *) ;
 int mgmtRemoveVgroupFromDb (int *,int *) ;

int mgmtMoveVgroupToHead(SDbObj *pDb, SVgObj *pVgroup) {
  mgmtRemoveVgroupFromDb(pDb, pVgroup);
  mgmtAddVgroupIntoDb(pDb, pVgroup);

  return 0;
}
