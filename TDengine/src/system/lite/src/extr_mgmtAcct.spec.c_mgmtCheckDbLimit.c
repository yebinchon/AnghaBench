
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SAcctObj ;


 int TSDB_CODE_TOO_MANY_DATABSES ;
 int dbSdb ;
 int mWarn (char*,int,int) ;
 int sdbGetNumOfRows (int ) ;
 int tsMaxDbs ;

int mgmtCheckDbLimit(SAcctObj *pAcct) {
  int numOfDbs = sdbGetNumOfRows(dbSdb);
  if (numOfDbs >= tsMaxDbs) {
    mWarn("numOfDbs:%d, exceed tsMaxDbs:%d", numOfDbs, tsMaxDbs);
    return TSDB_CODE_TOO_MANY_DATABSES;
  }
  return 0;
}
