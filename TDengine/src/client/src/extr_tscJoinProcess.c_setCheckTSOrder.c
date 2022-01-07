
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ rawBuf; } ;
struct TYPE_5__ {int tsOrder; TYPE_1__ tsData; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_1__ STSList ;
typedef TYPE_2__ STSBuf ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_KEYSIZE ;
 void* TSQL_SO_ASC ;
 void* TSQL_SO_DESC ;

__attribute__((used)) static int32_t setCheckTSOrder(STSBuf* pTSBuf, const char* pData, int32_t len) {
  STSList* ptsData = &pTSBuf->tsData;

  if (pTSBuf->tsOrder == -1) {
    if (ptsData->len > 0) {
      TSKEY lastKey = *(TSKEY*)(ptsData->rawBuf + ptsData->len - TSDB_KEYSIZE);

      if (lastKey > *(TSKEY*)pData) {
        pTSBuf->tsOrder = TSQL_SO_DESC;
      } else {
        pTSBuf->tsOrder = TSQL_SO_ASC;
      }
    } else if (len > TSDB_KEYSIZE) {

      TSKEY k1 = *(TSKEY*)(pData);
      TSKEY k2 = *(TSKEY*)(pData + TSDB_KEYSIZE);

      if (k1 < k2) {
        pTSBuf->tsOrder = TSQL_SO_ASC;
      } else if (k1 > k2) {
        pTSBuf->tsOrder = TSQL_SO_DESC;
      } else {

      }
    }
  } else {

  }

  return TSDB_CODE_SUCCESS;
}
