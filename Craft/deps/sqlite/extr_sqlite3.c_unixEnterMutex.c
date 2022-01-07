
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_MUTEX_STATIC_MASTER ;
 int sqlite3MutexAlloc (int ) ;
 int sqlite3_mutex_enter (int ) ;

__attribute__((used)) static void unixEnterMutex(void){
  sqlite3_mutex_enter(sqlite3MutexAlloc(SQLITE_MUTEX_STATIC_MASTER));
}
