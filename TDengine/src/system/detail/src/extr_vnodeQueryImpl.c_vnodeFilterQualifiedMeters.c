
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_24__ ;
typedef struct TYPE_26__ TYPE_21__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_25__ {int numOfSids; size_t* starterPos; } ;
typedef TYPE_1__ tSidSet ;
typedef scalar_t__ int64_t ;
typedef size_t int32_t ;
struct TYPE_35__ {scalar_t__ compInfoOffset; } ;
struct TYPE_34__ {TYPE_24__* pMeterQInfo; scalar_t__ offsetInHeaderFile; int * pMeterObj; } ;
struct TYPE_33__ {scalar_t__ lastKeyOnFile; int sid; int meterId; int vnode; } ;
struct TYPE_32__ {scalar_t__ rawSKey; scalar_t__ rawEKey; int pMeterObj; TYPE_5__** pMeterSidExtInfo; } ;
struct TYPE_31__ {int sid; } ;
struct TYPE_30__ {TYPE_6__* pMeterQuerySupporter; int query; } ;
struct TYPE_29__ {char* pHeaderFileData; scalar_t__ headFileSize; int headerFilePath; } ;
struct TYPE_26__ {int maxSessions; } ;
struct TYPE_28__ {TYPE_21__ cfg; int fileId; int numOfFiles; } ;
struct TYPE_27__ {scalar_t__ lastKey; } ;
typedef scalar_t__ TSKEY ;
typedef int TSCKSUM ;
typedef TYPE_2__ SVnodeObj ;
typedef TYPE_3__ SQueryFileInfo ;
typedef int SQuery ;
typedef TYPE_4__ SQInfo ;
typedef TYPE_5__ SMeterSidExtInfo ;
typedef TYPE_6__ SMeterQuerySupportObj ;
typedef TYPE_7__ SMeterObj ;
typedef TYPE_8__ SMeterDataInfo ;
typedef TYPE_9__ SCompHeader ;


 int POINTER_BYTES ;
 scalar_t__ QUERY_IS_ASC_QUERY (int *) ;
 scalar_t__ TSDB_FILE_HEADER_LEN ;
 int assert (int) ;
 TYPE_24__* createMeterQueryInfo (int *,scalar_t__,scalar_t__) ;
 int dError (char*,TYPE_4__*,int ,...) ;
 TYPE_7__* getMeterObj (int ,int ) ;
 scalar_t__ getOldestKey (int ,int ,TYPE_21__*) ;
 TYPE_8__** malloc (int) ;
 int offsetComparator ;
 int qsort (TYPE_8__**,size_t,int,int ) ;
 int setMeterDataInfo (TYPE_8__*,TYPE_7__*,size_t,size_t) ;
 scalar_t__ validateHeaderOffsetSegment (TYPE_4__*,int ,size_t,char*,size_t) ;
 TYPE_2__* vnodeList ;

SMeterDataInfo **vnodeFilterQualifiedMeters(SQInfo *pQInfo, int32_t vid, SQueryFileInfo *pQueryFileInfo,
                                            tSidSet *pSidSet, SMeterDataInfo *pMeterDataInfo, int32_t *numOfMeters) {
  SQuery * pQuery = &pQInfo->query;
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;
  SMeterSidExtInfo ** pMeterSidExtInfo = pSupporter->pMeterSidExtInfo;

  SVnodeObj *pVnode = &vnodeList[vid];

  char * pHeaderData = pQueryFileInfo->pHeaderFileData;
  int32_t tmsize = sizeof(SCompHeader) * (pVnode->cfg.maxSessions) + sizeof(TSCKSUM);


  if (validateHeaderOffsetSegment(pQInfo, pQueryFileInfo->headerFilePath, vid, pHeaderData, tmsize) < 0) {
    *numOfMeters = 0;
    return 0;
  }

  int64_t oldestKey = getOldestKey(pVnode->numOfFiles, pVnode->fileId, &pVnode->cfg);
  SMeterDataInfo **pReqMeterDataInfo = malloc(POINTER_BYTES * pSidSet->numOfSids);

  int32_t groupId = 0;
  TSKEY skey, ekey;

  for (int32_t i = 0; i < pSidSet->numOfSids; ++i) {
    SMeterObj *pMeterObj = getMeterObj(pSupporter->pMeterObj, pMeterSidExtInfo[i]->sid);
    if (pMeterObj == ((void*)0)) {
      dError("QInfo:%p failed to find required sid:%d", pQInfo, pMeterSidExtInfo[i]->sid);
      continue;
    }

    if (i >= pSidSet->starterPos[groupId + 1]) {
      groupId += 1;
    }

    SMeterDataInfo *pOneMeterDataInfo = &pMeterDataInfo[i];
    if (pOneMeterDataInfo->pMeterObj == ((void*)0)) {
      setMeterDataInfo(pOneMeterDataInfo, pMeterObj, i, groupId);
    }


    if (pOneMeterDataInfo->pMeterQInfo != ((void*)0)) {
      skey = pOneMeterDataInfo->pMeterQInfo->lastKey;
    } else {
      skey = pSupporter->rawSKey;
    }


    ekey = pSupporter->rawEKey;

    if (QUERY_IS_ASC_QUERY(pQuery)) {
      assert(skey >= pSupporter->rawSKey);
      if (ekey < oldestKey || skey > pMeterObj->lastKeyOnFile) {
        continue;
      }
    } else {
      assert(skey <= pSupporter->rawSKey);
      if (skey < oldestKey || ekey > pMeterObj->lastKeyOnFile) {
        continue;
      }
    }

    int64_t headerOffset = TSDB_FILE_HEADER_LEN + sizeof(SCompHeader) * pMeterObj->sid;

    SCompHeader *compHeader = (SCompHeader *)(pHeaderData + headerOffset);

    if (compHeader->compInfoOffset == 0) {
      continue;
    }

    if (compHeader->compInfoOffset < sizeof(SCompHeader) * pVnode->cfg.maxSessions + TSDB_FILE_HEADER_LEN ||
        compHeader->compInfoOffset > pQueryFileInfo->headFileSize) {
      dError("QInfo:%p vid:%d sid:%d id:%s, compInfoOffset:%d is not valid", pQuery, pMeterObj->vnode, pMeterObj->sid,
             pMeterObj->meterId, compHeader->compInfoOffset);
      continue;
    }

    pOneMeterDataInfo->offsetInHeaderFile = (uint64_t)compHeader->compInfoOffset;

    if (pOneMeterDataInfo->pMeterQInfo == ((void*)0)) {
      pOneMeterDataInfo->pMeterQInfo = createMeterQueryInfo(pQuery, pSupporter->rawSKey, pSupporter->rawEKey);
    }

    pReqMeterDataInfo[*numOfMeters] = pOneMeterDataInfo;
    (*numOfMeters) += 1;
  }

  assert(*numOfMeters <= pSidSet->numOfSids);


  if (*numOfMeters > 1) {
    qsort(pReqMeterDataInfo, *numOfMeters, POINTER_BYTES, offsetComparator);
  }

  return pReqMeterDataInfo;
}
