
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* db; } ;
struct TYPE_8__ {TYPE_2__ s; } ;
typedef TYPE_3__ sqlite3_context ;
struct TYPE_6__ {int mutex; } ;


 int SQLITE_UTF8 ;
 int assert (int ) ;
 int setResultStrOrError (TYPE_3__*,char const*,int,int ,void (*) (void*)) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3_result_text(
  sqlite3_context *pCtx,
  const char *z,
  int n,
  void (*xDel)(void *)
){
  assert( sqlite3_mutex_held(pCtx->s.db->mutex) );
  setResultStrOrError(pCtx, z, n, SQLITE_UTF8, xDel);
}
