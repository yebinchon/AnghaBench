
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* xUpdateCallback ) (void*,int,char const*,char const*,sqlite_int64) ;int mutex; void* pUpdateArg; } ;
typedef TYPE_1__ sqlite3 ;


 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

void *sqlite3_update_hook(
  sqlite3 *db,
  void (*xCallback)(void*,int,char const *,char const *,sqlite_int64),
  void *pArg
){
  void *pRet;
  sqlite3_mutex_enter(db->mutex);
  pRet = db->pUpdateArg;
  db->xUpdateCallback = xCallback;
  db->pUpdateArg = pArg;
  sqlite3_mutex_leave(db->mutex);
  return pRet;
}
