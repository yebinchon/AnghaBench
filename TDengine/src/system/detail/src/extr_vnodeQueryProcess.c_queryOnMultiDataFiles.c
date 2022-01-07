
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_72__ TYPE_9__ ;
typedef struct TYPE_71__ TYPE_8__ ;
typedef struct TYPE_70__ TYPE_7__ ;
typedef struct TYPE_69__ TYPE_6__ ;
typedef struct TYPE_68__ TYPE_5__ ;
typedef struct TYPE_67__ TYPE_4__ ;
typedef struct TYPE_66__ TYPE_3__ ;
typedef struct TYPE_65__ TYPE_2__ ;
typedef struct TYPE_64__ TYPE_21__ ;
typedef struct TYPE_63__ TYPE_1__ ;
typedef struct TYPE_62__ TYPE_16__ ;
typedef struct TYPE_61__ TYPE_15__ ;
typedef struct TYPE_60__ TYPE_14__ ;
typedef struct TYPE_59__ TYPE_13__ ;
typedef struct TYPE_58__ TYPE_12__ ;
typedef struct TYPE_57__ TYPE_11__ ;
typedef struct TYPE_56__ TYPE_10__ ;


typedef int uint32_t ;
typedef size_t int64_t ;
typedef size_t int32_t ;
typedef int __block_search_fn_t ;
struct TYPE_67__ {int order; } ;
struct TYPE_72__ {size_t fileId; scalar_t__ nAggTimeInterval; scalar_t__ lastKey; scalar_t__ ekey; size_t pos; int skey; TYPE_4__ order; } ;
struct TYPE_71__ {size_t fileTimeUs; int numOfTables; int readDiskBlocks; int skippedFileBlocks; int numOfFiles; } ;
struct TYPE_70__ {char* pHeaderFileData; int dataFilePath; } ;
struct TYPE_68__ {size_t fileId; } ;
struct TYPE_69__ {int numOfFiles; scalar_t__ colDataBuffer; int blockStatus; TYPE_1__* primaryColBuffer; TYPE_13__* pMeterObj; TYPE_7__* pHeaderFiles; TYPE_5__ startPos; TYPE_8__ summary; } ;
struct TYPE_66__ {int sid; } ;
struct TYPE_65__ {int fields; TYPE_16__* compBlock; } ;
struct TYPE_64__ {int numOfSids; } ;
struct TYPE_63__ {scalar_t__ data; } ;
struct TYPE_62__ {size_t numOfPoints; scalar_t__ keyFirst; scalar_t__ keyLast; } ;
struct TYPE_61__ {TYPE_2__ pBlock; int blockIndex; TYPE_14__* pMeterDataInfo; } ;
struct TYPE_60__ {int meterOrderIdx; int groupIdx; TYPE_13__* pMeterObj; TYPE_12__* pMeterQInfo; } ;
struct TYPE_59__ {size_t searchAlgorithm; size_t vnode; int meterId; int sid; } ;
struct TYPE_58__ {int queryRangeSet; } ;
struct TYPE_57__ {TYPE_21__* pSidSet; int pResult; TYPE_3__** pMeterSidExtInfo; int pMeterObj; TYPE_6__ runtimeEnv; } ;
struct TYPE_56__ {int killed; TYPE_13__* pObj; void* code; TYPE_11__* pMeterQuerySupporter; TYPE_9__ query; } ;
typedef int TSKEY ;
typedef TYPE_6__ SQueryRuntimeEnv ;
typedef TYPE_7__ SQueryFileInfo ;
typedef TYPE_8__ SQueryCostSummary ;
typedef TYPE_9__ SQuery ;
typedef TYPE_10__ SQInfo ;
typedef TYPE_11__ SMeterQuerySupportObj ;
typedef TYPE_12__ SMeterQueryInfo ;
typedef TYPE_13__ SMeterObj ;
typedef TYPE_14__ SMeterDataInfo ;
typedef TYPE_15__ SMeterDataBlockInfoEx ;
typedef TYPE_16__ SCompBlock ;
typedef int SBlockInfo ;


 int BLK_FILE_BLOCK ;
 size_t DISK_DATA_LOADED ;
 size_t GET_FORWARD_DIRECTION_FACTOR (int ) ;
 int INT32_MAX ;
 scalar_t__ IS_DATA_BLOCK_LOADED (int ) ;
 size_t LoadDatablockOnDemand (TYPE_16__*,int *,int *,TYPE_6__*,size_t,int ,int ,int) ;
 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_9__*) ;
 int QUERY_NOT_COMPLETED ;
 void* TSDB_CODE_SERV_OUT_OF_MEMORY ;
 int assert (int) ;
 size_t createDataBlocksInfoEx (TYPE_14__**,size_t,TYPE_15__**,int,size_t*,size_t) ;
 int dError (char*,TYPE_10__*) ;
 int dTrace (char*,TYPE_10__*,int,...) ;
 int doCheckWithPrevQueryRange (TYPE_10__*,int ,TYPE_14__*) ;
 int freeMeterBlockInfoEx (TYPE_15__*,size_t) ;
 int getBlockBasicInfo (TYPE_16__*,int ) ;
 int getDataBlocksForMeters (TYPE_11__*,TYPE_9__*,char*,size_t,TYPE_7__*,TYPE_14__**) ;
 TYPE_13__* getMeterObj (int ,int ) ;
 scalar_t__ isQueryKilled (TYPE_9__*) ;
 scalar_t__ needPrimaryTimestampCol (TYPE_9__*,int *) ;
 int onDemandLoadDatablock (TYPE_9__*,int ) ;
 int qTrace (char*,TYPE_10__*,size_t,int ,int ,int ,scalar_t__,scalar_t__) ;
 int queryOnBlock (TYPE_11__*,int *,int ,char*,int *,TYPE_14__*,int ,int ) ;
 int restoreIntervalQueryRange (TYPE_6__*,TYPE_12__*) ;
 int setExecutionContext (TYPE_11__*,int ,int ,int ,TYPE_12__*) ;
 int setIntervalQueryExecutionContext (TYPE_11__*,int ,TYPE_12__*) ;
 int setQueryStatus (TYPE_9__*,int ) ;
 size_t taosGetTimestampMs () ;
 size_t taosGetTimestampUs () ;
 int tfree (TYPE_14__**) ;
 TYPE_14__** vnodeFilterQualifiedMeters (TYPE_10__*,size_t,TYPE_7__*,TYPE_21__*,TYPE_14__*,size_t*) ;
 size_t vnodeGetVnodeHeaderFileIdx (size_t*,TYPE_6__*,int ) ;
 int * vnodeSearchKeyFunc ;

__attribute__((used)) static SMeterDataInfo *queryOnMultiDataFiles(SQInfo *pQInfo, SMeterDataInfo *pMeterDataInfo) {
  SQuery * pQuery = &pQInfo->query;
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;
  SQueryRuntimeEnv * pRuntimeEnv = &pSupporter->runtimeEnv;
  SMeterDataBlockInfoEx *pDataBlockInfoEx = ((void*)0);
  int32_t nAllocBlocksInfoSize = 0;

  SMeterObj * pTempMeter = getMeterObj(pSupporter->pMeterObj, pSupporter->pMeterSidExtInfo[0]->sid);
  __block_search_fn_t searchFn = vnodeSearchKeyFunc[pTempMeter->searchAlgorithm];

  int32_t vnodeId = pTempMeter->vnode;
  dTrace("QInfo:%p start to check data blocks in %d files", pQInfo, pRuntimeEnv->numOfFiles);

  int32_t fid = QUERY_IS_ASC_QUERY(pQuery) ? -1 : INT32_MAX;
  int32_t step = GET_FORWARD_DIRECTION_FACTOR(pQuery->order.order);
  SQueryCostSummary *pSummary = &pRuntimeEnv->summary;

  int64_t totalBlocks = 0;
  int64_t st = taosGetTimestampUs();

  while (1) {
    if (isQueryKilled(pQuery)) {
      break;
    }

    int32_t fileIdx = vnodeGetVnodeHeaderFileIdx(&fid, pRuntimeEnv, pQuery->order.order);
    if (fileIdx < 0) {
      break;
    }

    pRuntimeEnv->startPos.fileId = fid;
    pQuery->fileId = fid;
    pSummary->numOfFiles++;

    SQueryFileInfo *pQueryFileInfo = &pRuntimeEnv->pHeaderFiles[fileIdx];
    char * pHeaderData = pQueryFileInfo->pHeaderFileData;

    int32_t numOfQualifiedMeters = 0;
    SMeterDataInfo **pReqMeterDataInfo = vnodeFilterQualifiedMeters(
        pQInfo, vnodeId, pQueryFileInfo, pSupporter->pSidSet, pMeterDataInfo, &numOfQualifiedMeters);
    dTrace("QInfo:%p file:%s, %d meters qualified", pQInfo, pQueryFileInfo->dataFilePath, numOfQualifiedMeters);

    if (pReqMeterDataInfo == ((void*)0)) {
      dError("QInfo:%p failed to allocate memory to perform query processing, abort", pQInfo);

      pQInfo->code = TSDB_CODE_SERV_OUT_OF_MEMORY;
      pQInfo->killed = 1;
      return ((void*)0);
    }


    if (numOfQualifiedMeters == 0) {
      fid += step;
      tfree(pReqMeterDataInfo);
      continue;
    }

    uint32_t numOfBlocks = getDataBlocksForMeters(pSupporter, pQuery, pHeaderData, numOfQualifiedMeters, pQueryFileInfo,
                                                  pReqMeterDataInfo);

    dTrace("QInfo:%p file:%s, %d meters contains %d blocks to be checked", pQInfo, pQueryFileInfo->dataFilePath,
           numOfQualifiedMeters, numOfBlocks);
    if (numOfBlocks == 0) {
      fid += step;
      tfree(pReqMeterDataInfo);
      continue;
    }

    int32_t n = createDataBlocksInfoEx(pReqMeterDataInfo, numOfQualifiedMeters, &pDataBlockInfoEx, numOfBlocks,
                                       &nAllocBlocksInfoSize, (int64_t)pQInfo);
    if (n < 0) {
      dError("QInfo:%p failed to allocate memory to perform query processing, abort", pQInfo);
      tfree(pReqMeterDataInfo);

      pQInfo->code = TSDB_CODE_SERV_OUT_OF_MEMORY;
      pQInfo->killed = 1;
      return ((void*)0);
    }

    dTrace("QInfo:%p start to load %d blocks and check", pQInfo, numOfBlocks);
    int64_t TRACE_OUTPUT_BLOCK_CNT = 10000;
    int64_t stimeUnit = 0;
    int64_t etimeUnit = 0;

    totalBlocks += numOfBlocks;


    int32_t j = QUERY_IS_ASC_QUERY(pQuery) ? 0 : numOfBlocks - 1;

    for (; j < numOfBlocks && j >= 0; j += step) {
      if (isQueryKilled(pQuery)) {
        break;
      }


      if (j == 0) {
        stimeUnit = taosGetTimestampMs();
      } else if ((j % TRACE_OUTPUT_BLOCK_CNT) == 0) {
        etimeUnit = taosGetTimestampMs();
        dTrace("QInfo:%p load and check %ld blocks, and continue. elapsed:%ldms", pQInfo, TRACE_OUTPUT_BLOCK_CNT,
               etimeUnit - stimeUnit);
        stimeUnit = taosGetTimestampMs();
      }

      SMeterDataBlockInfoEx *pInfoEx = &pDataBlockInfoEx[j];
      SMeterDataInfo * pOneMeterDataInfo = pInfoEx->pMeterDataInfo;
      SMeterQueryInfo * pMeterQueryInfo = pOneMeterDataInfo->pMeterQInfo;
      SMeterObj * pMeterObj = pOneMeterDataInfo->pMeterObj;

      pQInfo->pObj = pMeterObj;
      pRuntimeEnv->pMeterObj = pMeterObj;

      restoreIntervalQueryRange(pRuntimeEnv, pMeterQueryInfo);

      if (pQuery->nAggTimeInterval == 0) {
        if ((pQuery->lastKey > pQuery->ekey && QUERY_IS_ASC_QUERY(pQuery)) ||
            (pQuery->lastKey < pQuery->ekey && !QUERY_IS_ASC_QUERY(pQuery))) {
          qTrace(
              "QInfo:%p vid:%d sid:%d id:%s, query completed, no need to scan this data block. qrange:%lld-%lld, "
              "lastKey:%lld",
              pQInfo, pMeterObj->vnode, pMeterObj->sid, pMeterObj->meterId, pQuery->skey, pQuery->ekey,
              pQuery->lastKey);

          continue;
        }

        setExecutionContext(pSupporter, pSupporter->pResult, pOneMeterDataInfo->meterOrderIdx,
                            pOneMeterDataInfo->groupIdx, pMeterQueryInfo);
      } else {
        setIntervalQueryExecutionContext(pSupporter, pOneMeterDataInfo->meterOrderIdx, pMeterQueryInfo);
      }

      SCompBlock *pBlock = pInfoEx->pBlock.compBlock;
      bool ondemandLoad = onDemandLoadDatablock(pQuery, pMeterQueryInfo->queryRangeSet);
      int32_t ret = LoadDatablockOnDemand(pBlock, &pInfoEx->pBlock.fields, &pRuntimeEnv->blockStatus, pRuntimeEnv,
                                          fileIdx, pInfoEx->blockIndex, searchFn, ondemandLoad);
      if (ret != DISK_DATA_LOADED) {
        pSummary->skippedFileBlocks++;
        continue;
      }

      SBlockInfo binfo = getBlockBasicInfo(pBlock, BLK_FILE_BLOCK);

      assert(pQuery->pos >= 0 && pQuery->pos < pBlock->numOfPoints);
      TSKEY *primaryKeys = (TSKEY *)pRuntimeEnv->primaryColBuffer->data;

      if (IS_DATA_BLOCK_LOADED(pRuntimeEnv->blockStatus) && needPrimaryTimestampCol(pQuery, &binfo)) {
        TSKEY nextKey = primaryKeys[pQuery->pos];
        if (!doCheckWithPrevQueryRange(pQInfo, nextKey, pOneMeterDataInfo)) {
          continue;
        }
      } else {

        assert((pBlock->keyFirst >= pQuery->lastKey && pBlock->keyLast <= pQuery->ekey && QUERY_IS_ASC_QUERY(pQuery)) ||
               (pBlock->keyFirst >= pQuery->ekey && pBlock->keyLast <= pQuery->lastKey && !QUERY_IS_ASC_QUERY(pQuery)));
      }

      queryOnBlock(pSupporter, primaryKeys, pRuntimeEnv->blockStatus, (char *)pRuntimeEnv->colDataBuffer, &binfo,
                   pOneMeterDataInfo, pInfoEx->pBlock.fields, searchFn);
    }

    tfree(pReqMeterDataInfo);


    fid += step;
  }

  int64_t time = taosGetTimestampUs() - st;
  dTrace("QInfo:%p complete check %d files, %d blocks, elapsed time:%.3fms", pQInfo, pRuntimeEnv->numOfFiles,
         totalBlocks, time / 1000.0);

  pSummary->fileTimeUs += time;
  pSummary->readDiskBlocks += totalBlocks;
  pSummary->numOfTables = pSupporter->pSidSet->numOfSids;

  setQueryStatus(pQuery, QUERY_NOT_COMPLETED);
  freeMeterBlockInfoEx(pDataBlockInfoEx, nAllocBlocksInfoSize);

  return pMeterDataInfo;
}
