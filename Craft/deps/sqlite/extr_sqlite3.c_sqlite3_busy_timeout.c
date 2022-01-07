
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int busyTimeout; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_OK ;
 int sqlite3_busy_handler (TYPE_1__*,int ,void*) ;
 int sqliteDefaultBusyCallback ;

int sqlite3_busy_timeout(sqlite3 *db, int ms){
  if( ms>0 ){
    sqlite3_busy_handler(db, sqliteDefaultBusyCallback, (void*)db);
    db->busyTimeout = ms;
  }else{
    sqlite3_busy_handler(db, 0, 0);
  }
  return SQLITE_OK;
}
