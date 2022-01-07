
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mutex; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int SQLITE_UTF8 ;
 int sqlite3ApiExit (TYPE_1__*,int) ;
 int sqlite3CreateFunc (TYPE_1__*,char const*,int,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ sqlite3FindFunction (TYPE_1__*,char const*,int,int ,int ) ;
 int sqlite3InvalidFunction ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_overload_function(
  sqlite3 *db,
  const char *zName,
  int nArg
){
  int rc = SQLITE_OK;






  sqlite3_mutex_enter(db->mutex);
  if( sqlite3FindFunction(db, zName, nArg, SQLITE_UTF8, 0)==0 ){
    rc = sqlite3CreateFunc(db, zName, nArg, SQLITE_UTF8,
                           0, sqlite3InvalidFunction, 0, 0, 0);
  }
  rc = sqlite3ApiExit(db, rc);
  sqlite3_mutex_leave(db->mutex);
  return rc;
}
