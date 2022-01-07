
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int flags; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_LoadExtension ;
 int SQLITE_OK ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_enable_load_extension(sqlite3 *db, int onoff){
  sqlite3_mutex_enter(db->mutex);
  if( onoff ){
    db->flags |= SQLITE_LoadExtension;
  }else{
    db->flags &= ~SQLITE_LoadExtension;
  }
  sqlite3_mutex_leave(db->mutex);
  return SQLITE_OK;
}
