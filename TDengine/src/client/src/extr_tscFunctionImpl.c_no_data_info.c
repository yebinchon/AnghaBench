
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int TSKEY ;
typedef int SQLFunctionCtx ;


 int BLK_DATA_NO_NEEDED ;

int32_t no_data_info(SQLFunctionCtx *pCtx, TSKEY start, TSKEY end, int32_t colId, int32_t blockStatus) {
  return BLK_DATA_NO_NEEDED;
}
