
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int SQLITE_INT_TO_PTR (int) ;
 int SQLITE_OK ;
 int UNUSED_PARAMETER (int) ;
 int sqlite3WalDefaultHook ;
 int sqlite3_wal_hook (int *,int ,int ) ;

int sqlite3_wal_autocheckpoint(sqlite3 *db, int nFrame){




  if( nFrame>0 ){
    sqlite3_wal_hook(db, sqlite3WalDefaultHook, SQLITE_INT_TO_PTR(nFrame));
  }else{
    sqlite3_wal_hook(db, 0, 0);
  }

  return SQLITE_OK;
}
