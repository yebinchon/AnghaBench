
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_5__ {TYPE_1__* db; int * aVar; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_4__ {int mutex; } ;


 int SQLITE_OK ;
 int sqlite3VdbeMemSetZeroBlob (int *,int) ;
 int sqlite3_mutex_leave (int ) ;
 int vdbeUnbind (TYPE_2__*,int) ;

int sqlite3_bind_zeroblob(sqlite3_stmt *pStmt, int i, int n){
  int rc;
  Vdbe *p = (Vdbe *)pStmt;
  rc = vdbeUnbind(p, i);
  if( rc==SQLITE_OK ){
    sqlite3VdbeMemSetZeroBlob(&p->aVar[i-1], n);
    sqlite3_mutex_leave(p->db->mutex);
  }
  return rc;
}
