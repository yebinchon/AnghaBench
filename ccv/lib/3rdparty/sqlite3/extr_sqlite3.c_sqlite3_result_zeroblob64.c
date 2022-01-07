
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_7__ {TYPE_3__* pOut; } ;
typedef TYPE_2__ sqlite3_context ;
struct TYPE_8__ {TYPE_1__* db; } ;
struct TYPE_6__ {scalar_t__* aLimit; int mutex; } ;
typedef TYPE_3__ Mem ;


 size_t SQLITE_LIMIT_LENGTH ;
 int SQLITE_OK ;
 int SQLITE_TOOBIG ;
 int assert (int ) ;
 int sqlite3VdbeMemSetZeroBlob (TYPE_3__*,int) ;
 int sqlite3_mutex_held (int ) ;

int sqlite3_result_zeroblob64(sqlite3_context *pCtx, u64 n){
  Mem *pOut = pCtx->pOut;
  assert( sqlite3_mutex_held(pOut->db->mutex) );
  if( n>(u64)pOut->db->aLimit[SQLITE_LIMIT_LENGTH] ){
    return SQLITE_TOOBIG;
  }
  sqlite3VdbeMemSetZeroBlob(pCtx->pOut, (int)n);
  return SQLITE_OK;
}
