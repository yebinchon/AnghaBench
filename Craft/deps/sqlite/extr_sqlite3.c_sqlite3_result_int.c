
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* db; } ;
struct TYPE_6__ {TYPE_4__ s; } ;
typedef TYPE_2__ sqlite3_context ;
typedef int i64 ;
struct TYPE_5__ {int mutex; } ;


 int assert (int ) ;
 int sqlite3VdbeMemSetInt64 (TYPE_4__*,int ) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3_result_int(sqlite3_context *pCtx, int iVal){
  assert( sqlite3_mutex_held(pCtx->s.db->mutex) );
  sqlite3VdbeMemSetInt64(&pCtx->s, (i64)iVal);
}
