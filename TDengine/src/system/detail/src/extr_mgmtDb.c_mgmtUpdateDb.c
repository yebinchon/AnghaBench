
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDbObj ;


 int dbSdb ;
 int sdbUpdateRow (int ,int *,int ,int) ;
 int tsDbUpdateSize ;

int mgmtUpdateDb(SDbObj *pDb) { return sdbUpdateRow(dbSdb, pDb, tsDbUpdateSize, 1); }
