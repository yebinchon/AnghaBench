
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* xFunc ) (void*,int) ;scalar_t__ nBusy; void* pArg; } ;
struct TYPE_5__ {int mutex; scalar_t__ busyTimeout; TYPE_1__ busyHandler; } ;
typedef TYPE_2__ sqlite3 ;


 int SQLITE_OK ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_busy_handler(
  sqlite3 *db,
  int (*xBusy)(void*,int),
  void *pArg
){
  sqlite3_mutex_enter(db->mutex);
  db->busyHandler.xFunc = xBusy;
  db->busyHandler.pArg = pArg;
  db->busyHandler.nBusy = 0;
  db->busyTimeout = 0;
  sqlite3_mutex_leave(db->mutex);
  return SQLITE_OK;
}
