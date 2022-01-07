
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int int32_t ;
struct TYPE_10__ {int pointsRead; int pointsReturned; scalar_t__ over; int bufIndex; TYPE_1__* pMeterQuerySupporter; int signature; } ;
struct TYPE_9__ {TYPE_3__* ahandle; void* thandle; int * msg; int fp; } ;
struct TYPE_8__ {int * pSidSet; } ;
typedef TYPE_2__ SSchedMsg ;
typedef TYPE_3__ SQInfo ;


 scalar_t__ TSDB_QINFO_SET_QUERY_FLAG (TYPE_3__*) ;
 int dTrace (char*,TYPE_3__*,...) ;
 int queryQhandle ;
 int taosScheduleTask (int ,TYPE_2__*) ;
 int vnodeCopyQueryResultToMsg (TYPE_3__*,char*,int,int*) ;
 int vnodeMultiMeterQuery ;
 int vnodeQueryData ;
 int vnodeSingleMeterQuery ;

int vnodeSaveQueryResult(void *handle, char *data, int32_t *size) {
  SQInfo *pQInfo = (SQInfo *)handle;


  int numOfRows = pQInfo->pointsRead - pQInfo->pointsReturned;

  int32_t numOfFinal = vnodeCopyQueryResultToMsg(pQInfo, data, numOfRows, size);
  pQInfo->pointsReturned += numOfFinal;

  dTrace("QInfo:%p %d are returned, totalReturned:%d totalRead:%d", pQInfo, numOfFinal, pQInfo->pointsReturned,
         pQInfo->pointsRead);

  if (pQInfo->over == 0) {

    dTrace("QInfo:%p set query flag, oldSig:%p", pQInfo, pQInfo->signature);
    uint64_t oldSignature = TSDB_QINFO_SET_QUERY_FLAG(pQInfo);
    if (oldSignature == 0 || oldSignature != (uint64_t)pQInfo) {
      dTrace("%p freed or killed, old sig:%p abort query", pQInfo, oldSignature);
    } else {
      dTrace("%p add query into task queue for schedule", pQInfo);

      SSchedMsg schedMsg;

      if (pQInfo->pMeterQuerySupporter != ((void*)0)) {
        if (pQInfo->pMeterQuerySupporter->pSidSet == ((void*)0)) {
          schedMsg.fp = vnodeSingleMeterQuery;
        } else {
          schedMsg.fp = vnodeMultiMeterQuery;
        }
      } else {
        pQInfo->bufIndex = pQInfo->bufIndex ^ 1;
        schedMsg.fp = vnodeQueryData;
      }

      schedMsg.msg = ((void*)0);
      schedMsg.thandle = (void *)1;
      schedMsg.ahandle = pQInfo;
      taosScheduleTask(queryQhandle, &schedMsg);
    }
  }

  return numOfFinal;
}
