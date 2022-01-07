
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {scalar_t__ numOfRes; } ;
struct TYPE_5__ {scalar_t__ order; } ;
typedef int TSKEY ;
typedef TYPE_1__ SQLFunctionCtx ;


 int BLK_DATA_ALL_NEEDED ;
 int BLK_DATA_NO_NEEDED ;
 TYPE_3__* GET_RES_INFO (TYPE_1__*) ;
 scalar_t__ TSQL_SO_ASC ;

__attribute__((used)) static int32_t last_data_req_info(SQLFunctionCtx *pCtx, TSKEY start, TSKEY end, int32_t colId, int32_t blockStatus) {
  if (pCtx->order == TSQL_SO_ASC) {
    return BLK_DATA_NO_NEEDED;
  }

  if (GET_RES_INFO(pCtx)->numOfRes <= 0) {
    return BLK_DATA_ALL_NEEDED;
  } else {
    return BLK_DATA_NO_NEEDED;
  }
}
