
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SAcctObj ;


 int TSDB_CODE_TOO_MANY_USERS ;
 int mWarn (char*,int,int) ;
 int sdbGetNumOfRows (int ) ;
 int tsMaxUsers ;
 int userSdb ;

int mgmtCheckUserLimit(SAcctObj *pAcct) {
  int numOfUsers = sdbGetNumOfRows(userSdb);
  if (numOfUsers >= tsMaxUsers) {
    mWarn("numOfUsers:%d, exceed tsMaxUsers:%d", numOfUsers, tsMaxUsers);
    return TSDB_CODE_TOO_MANY_USERS;
  }
  return 0;
}
