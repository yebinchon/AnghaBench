
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bExtraFileArg; } ;
struct TYPE_7__ {int busyTimeout; TYPE_1__ busyHandler; } ;
typedef TYPE_2__ sqlite3 ;


 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int sqlite3SafetyCheckOk (TYPE_2__*) ;
 int sqlite3_busy_handler (TYPE_2__*,int (*) (void*,int),void*) ;
 scalar_t__ sqliteDefaultBusyCallback ;

int sqlite3_busy_timeout(sqlite3 *db, int ms){



  if( ms>0 ){
    sqlite3_busy_handler(db, (int(*)(void*,int))sqliteDefaultBusyCallback,
                             (void*)db);
    db->busyTimeout = ms;
    db->busyHandler.bExtraFileArg = 1;
  }else{
    sqlite3_busy_handler(db, 0, 0);
  }
  return SQLITE_OK;
}
