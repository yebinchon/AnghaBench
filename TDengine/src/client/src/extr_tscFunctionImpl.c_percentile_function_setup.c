
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tOrderDescriptor ;
typedef int tColModel ;
typedef int int32_t ;
struct TYPE_13__ {int pMemBucket; } ;
struct TYPE_12__ {int inputType; int inputBytes; } ;
struct TYPE_11__ {scalar_t__ interResultBuf; } ;
struct TYPE_10__ {char* member_1; int member_3; int member_2; int member_0; } ;
typedef TYPE_1__ SSchema ;
typedef TYPE_2__ SResultInfo ;
typedef TYPE_3__ SQLFunctionCtx ;
typedef TYPE_4__ SPercentileInfo ;


 TYPE_2__* GET_RES_INFO (TYPE_3__*) ;
 int TSQL_SO_DESC ;
 int function_setup (TYPE_3__*) ;
 int * tColModelCreate (TYPE_1__*,int,int) ;
 int tMemBucketCreate (int,int const,int ,int ,int *) ;
 int * tOrderDesCreate (int*,int const,int *,int ) ;

__attribute__((used)) static bool percentile_function_setup(SQLFunctionCtx *pCtx) {
  const int32_t MAX_AVAILABLE_BUFFER_SIZE = 1 << 20;
  const int32_t NUMOFCOLS = 1;

  if (!function_setup(pCtx)) {
    return 0;
  }

  SResultInfo *pResInfo = GET_RES_INFO(pCtx);
  SSchema field[1] = {{pCtx->inputType, "dummyCol", 0, pCtx->inputBytes}};

  tColModel *pModel = tColModelCreate(field, 1, 1000);
  int32_t orderIdx = 0;


  tOrderDescriptor *pDesc = tOrderDesCreate(&orderIdx, NUMOFCOLS, pModel, TSQL_SO_DESC);

  ((SPercentileInfo *)(pResInfo->interResultBuf))->pMemBucket =
      tMemBucketCreate(1024, MAX_AVAILABLE_BUFFER_SIZE, pCtx->inputBytes, pCtx->inputType, pDesc);

  return 1;
}
