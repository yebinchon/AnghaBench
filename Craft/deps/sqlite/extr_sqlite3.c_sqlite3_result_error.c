
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* db; } ;
struct TYPE_6__ {TYPE_4__ s; int isError; } ;
typedef TYPE_2__ sqlite3_context ;
struct TYPE_5__ {int mutex; } ;


 int SQLITE_ERROR ;
 int SQLITE_TRANSIENT ;
 int SQLITE_UTF8 ;
 int assert (int ) ;
 int sqlite3VdbeMemSetStr (TYPE_4__*,char const*,int,int ,int ) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3_result_error(sqlite3_context *pCtx, const char *z, int n){
  assert( sqlite3_mutex_held(pCtx->s.db->mutex) );
  pCtx->isError = SQLITE_ERROR;
  sqlite3VdbeMemSetStr(&pCtx->s, z, n, SQLITE_UTF8, SQLITE_TRANSIENT);
}
