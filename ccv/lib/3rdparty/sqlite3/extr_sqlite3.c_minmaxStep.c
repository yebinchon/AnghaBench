
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_6__ {int db; scalar_t__ flags; } ;
typedef TYPE_1__ Mem ;
typedef int CollSeq ;


 scalar_t__ SQLITE_NULL ;
 int UNUSED_PARAMETER (int) ;
 int * sqlite3GetFuncCollSeq (int *) ;
 int sqlite3MemCompare (TYPE_1__*,TYPE_1__*,int *) ;
 int sqlite3SkipAccumulatorLoad (int *) ;
 int sqlite3VdbeMemCopy (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_context_db_handle (int *) ;
 scalar_t__ sqlite3_user_data (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void minmaxStep(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  Mem *pArg = (Mem *)argv[0];
  Mem *pBest;
  UNUSED_PARAMETER(NotUsed);

  pBest = (Mem *)sqlite3_aggregate_context(context, sizeof(*pBest));
  if( !pBest ) return;

  if( sqlite3_value_type(argv[0])==SQLITE_NULL ){
    if( pBest->flags ) sqlite3SkipAccumulatorLoad(context);
  }else if( pBest->flags ){
    int max;
    int cmp;
    CollSeq *pColl = sqlite3GetFuncCollSeq(context);
    max = sqlite3_user_data(context)!=0;
    cmp = sqlite3MemCompare(pBest, pArg, pColl);
    if( (max && cmp<0) || (!max && cmp>0) ){
      sqlite3VdbeMemCopy(pBest, pArg);
    }else{
      sqlite3SkipAccumulatorLoad(context);
    }
  }else{
    pBest->db = sqlite3_context_db_handle(context);
    sqlite3VdbeMemCopy(pBest, pArg);
  }
}
