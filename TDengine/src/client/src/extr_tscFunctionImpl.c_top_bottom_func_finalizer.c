
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tValuePair ;
typedef int __compar_fn_t ;
struct TYPE_13__ {TYPE_1__* param; } ;
struct TYPE_12__ {scalar_t__ hasResult; scalar_t__ numOfRes; TYPE_2__* interResultBuf; } ;
struct TYPE_11__ {scalar_t__ num; int ** res; } ;
struct TYPE_10__ {scalar_t__ i64Key; } ;
typedef TYPE_2__ STopBotInfo ;
typedef TYPE_3__ SResultInfo ;
typedef TYPE_4__ SQLFunctionCtx ;


 scalar_t__ DATA_SET_FLAG ;
 TYPE_3__* GET_RES_INFO (TYPE_4__*) ;
 int GET_TRUE_DATA_TYPE () ;
 int POINTER_BYTES ;
 scalar_t__ PRIMARYKEY_TIMESTAMP_COL_INDEX ;
 scalar_t__ TSQL_SO_ASC ;
 int assert (int) ;
 int copyTopBotRes (TYPE_4__*,int ) ;
 int qsort (int **,scalar_t__,int ,int ) ;
 int resAscComparFn ;
 int resDataAscComparFn ;
 int resDataDescComparFn ;
 int resDescComparFn ;
 int resetResultInfo (TYPE_3__*) ;
 int type ;

__attribute__((used)) static void top_bottom_func_finalizer(SQLFunctionCtx *pCtx) {
  SResultInfo *pResInfo = GET_RES_INFO(pCtx);


  STopBotInfo *pRes = pResInfo->interResultBuf;
  if (pRes->num == 0) {
    assert(pResInfo->hasResult != DATA_SET_FLAG);

  }

  GET_RES_INFO(pCtx)->numOfRes = pRes->num;
  tValuePair **tvp = pRes->res;


  if (pCtx->param[1].i64Key == PRIMARYKEY_TIMESTAMP_COL_INDEX) {
    __compar_fn_t comparator = (pCtx->param[2].i64Key == TSQL_SO_ASC) ? resAscComparFn : resDescComparFn;
    qsort(tvp, pResInfo->numOfRes, POINTER_BYTES, comparator);
  } else if (pCtx->param[1].i64Key > PRIMARYKEY_TIMESTAMP_COL_INDEX) {
    __compar_fn_t comparator = (pCtx->param[2].i64Key == TSQL_SO_ASC) ? resDataAscComparFn : resDataDescComparFn;
    qsort(tvp, pResInfo->numOfRes, POINTER_BYTES, comparator);
  }

  GET_TRUE_DATA_TYPE();
  copyTopBotRes(pCtx, type);

  resetResultInfo(pResInfo);
}
