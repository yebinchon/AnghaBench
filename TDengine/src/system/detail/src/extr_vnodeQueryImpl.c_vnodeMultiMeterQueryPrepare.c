
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_16__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;


struct TYPE_32__ {int * pSchema; } ;
typedef TYPE_4__ tTagSchema ;
typedef int tFilePage ;
typedef scalar_t__ int32_t ;
typedef int int16_t ;
struct TYPE_36__ {int vnode; } ;
struct TYPE_30__ {int vnodeIndex; } ;
struct TYPE_28__ {int numOfRowsPerPage; int interpoInfo; int pResult; scalar_t__ usedIndex; int hashList; TYPE_12__* pTSBuf; TYPE_2__ cur; int loadCompBlockInfo; int loadBlockInfo; } ;
struct TYPE_35__ {scalar_t__ rawEKey; scalar_t__ rawSKey; int numOfPages; int numOfMeters; int lastPageId; int bufSize; scalar_t__ meterOutputMMapBuf; TYPE_16__ runtimeEnv; int extBufFile; int meterOutputFd; int pResult; TYPE_13__* pSidSet; int pMeterObj; } ;
struct TYPE_34__ {int over; scalar_t__ pointsRead; int dataReady; TYPE_7__* pMeterQuerySupporter; } ;
struct TYPE_31__ {scalar_t__ order; } ;
struct TYPE_33__ {scalar_t__ skey; scalar_t__ ekey; scalar_t__ lastKey; scalar_t__ nAggTimeInterval; int rowSize; TYPE_3__ order; int precision; int intervalTimeUnit; int interpoType; int pGroupbyExpr; scalar_t__ pointsRead; } ;
struct TYPE_29__ {int sid; } ;
struct TYPE_27__ {TYPE_1__** pSids; TYPE_4__* pTagSchema; } ;
struct TYPE_26__ {scalar_t__ tsOrder; } ;
typedef int TSKEY ;
typedef int SSchema ;
typedef TYPE_5__ SQuery ;
typedef TYPE_6__ SQInfo ;
typedef TYPE_7__ SMeterQuerySupportObj ;
typedef TYPE_8__ SMeterObj ;


 int DEFAULT_INTERN_BUF_SIZE ;
 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int O_CREAT ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_5__*) ;
 scalar_t__ TSDB_CODE_SERV_OUT_OF_MEMORY ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_INTERPO_NONE ;
 int TSQL_SO_ASC ;
 int TSQL_SO_DESC ;
 int VALIDFD (int ) ;
 scalar_t__ allocateOutputBufForGroup (TYPE_7__*,TYPE_5__*,int) ;
 int changeExecuteScanOrder (TYPE_5__*,int) ;
 int dError (char*,TYPE_6__*,int ,int ) ;
 int dTrace (char*,TYPE_6__*,scalar_t__,scalar_t__,scalar_t__) ;
 int errno ;
 int ftruncate (int ,int) ;
 TYPE_8__* getMeterObj (int ,int ) ;
 int getTmpfilePath (char*,int ) ;
 scalar_t__ isGroupbyNormalCol (int ) ;
 int isPointInterpoQuery (TYPE_5__*) ;
 scalar_t__ mmap (int *,int,int,int ,int ,int ) ;
 int open (int ,int,int) ;
 int sem_post (int *) ;
 int setScanLimitationByResultBuffer (TYPE_5__*) ;
 scalar_t__ setupQueryRuntimeEnv (TYPE_8__*,TYPE_5__*,TYPE_16__*,int *,int ,int) ;
 int strerror (int ) ;
 int tSidSetSort (TYPE_13__*) ;
 int taosGetIntervalStartTimestamp (scalar_t__,scalar_t__,int ,int ) ;
 int taosHashInt ;
 int taosInitIntHash (int,int,int ) ;
 int taosInitInterpoInfo (int *,scalar_t__,int ,int ,int ) ;
 int tsBufSetTraverseOrder (TYPE_12__*,int ) ;
 int vnodeInitDataBlockInfo (int *) ;
 int vnodeInitLoadCompBlockInfo (int *) ;
 int vnodeOpenAllFiles (TYPE_6__*,int ) ;

int32_t vnodeMultiMeterQueryPrepare(SQInfo *pQInfo, SQuery *pQuery, void *param) {
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;

  if ((QUERY_IS_ASC_QUERY(pQuery) && (pQuery->skey > pQuery->ekey)) ||
      (!QUERY_IS_ASC_QUERY(pQuery) && (pQuery->ekey > pQuery->skey))) {
    dTrace("QInfo:%p no result in time range %lld-%lld, order %d", pQInfo, pQuery->skey, pQuery->ekey,
           pQuery->order.order);

    sem_post(&pQInfo->dataReady);
    pQInfo->over = 1;

    return TSDB_CODE_SUCCESS;
  }

  pQInfo->over = 0;
  pQInfo->pointsRead = 0;
  pQuery->pointsRead = 0;

  changeExecuteScanOrder(pQuery, 1);

  vnodeInitDataBlockInfo(&pSupporter->runtimeEnv.loadBlockInfo);
  vnodeInitLoadCompBlockInfo(&pSupporter->runtimeEnv.loadCompBlockInfo);





  setScanLimitationByResultBuffer(pQuery);


  pSupporter->rawEKey = pQuery->ekey;
  pSupporter->rawSKey = pQuery->skey;
  pQuery->lastKey = pQuery->skey;


  SSchema *pTagSchema = ((void*)0);

  tTagSchema *pTagSchemaInfo = pSupporter->pSidSet->pTagSchema;
  if (pTagSchemaInfo != ((void*)0)) {
    pTagSchema = pTagSchemaInfo->pSchema;
  }


  SMeterObj *pMeter = getMeterObj(pSupporter->pMeterObj, pSupporter->pSidSet->pSids[0]->sid);

  pSupporter->runtimeEnv.pTSBuf = param;
  pSupporter->runtimeEnv.cur.vnodeIndex = -1;


  if (param != ((void*)0)) {
    int16_t order = (pQuery->order.order == pSupporter->runtimeEnv.pTSBuf->tsOrder) ? TSQL_SO_ASC : TSQL_SO_DESC;
    tsBufSetTraverseOrder(pSupporter->runtimeEnv.pTSBuf, order);
  }

  int32_t ret = setupQueryRuntimeEnv(pMeter, pQuery, &pSupporter->runtimeEnv, pTagSchema, TSQL_SO_ASC, 1);
  if (ret != TSDB_CODE_SUCCESS) {
    return ret;
  }

  tSidSetSort(pSupporter->pSidSet);
  vnodeOpenAllFiles(pQInfo, pMeter->vnode);

  if ((ret = allocateOutputBufForGroup(pSupporter, pQuery, 1)) != TSDB_CODE_SUCCESS) {
    return ret;
  }

  if (isGroupbyNormalCol(pQuery->pGroupbyExpr)) {
    pSupporter->runtimeEnv.hashList = taosInitIntHash(10039, sizeof(void *), taosHashInt);
    pSupporter->runtimeEnv.usedIndex = 0;
    pSupporter->runtimeEnv.pResult = pSupporter->pResult;
  }

  if (pQuery->nAggTimeInterval != 0) {
    getTmpfilePath("tb_metric_mmap", pSupporter->extBufFile);
    pSupporter->meterOutputFd = open(pSupporter->extBufFile, O_CREAT | O_RDWR, 0666);

    if (!VALIDFD(pSupporter->meterOutputFd)) {
      dError("QInfo:%p failed to create file: %s on disk. %s", pQInfo, pSupporter->extBufFile, strerror(errno));
      return TSDB_CODE_SERV_OUT_OF_MEMORY;
    }


    pSupporter->numOfPages = pSupporter->numOfMeters;

    ftruncate(pSupporter->meterOutputFd, pSupporter->numOfPages * DEFAULT_INTERN_BUF_SIZE);
    pSupporter->runtimeEnv.numOfRowsPerPage = (DEFAULT_INTERN_BUF_SIZE - sizeof(tFilePage)) / pQuery->rowSize;
    pSupporter->lastPageId = -1;
    pSupporter->bufSize = pSupporter->numOfPages * DEFAULT_INTERN_BUF_SIZE;

    pSupporter->meterOutputMMapBuf =
        mmap(((void*)0), pSupporter->bufSize, PROT_READ | PROT_WRITE, MAP_SHARED, pSupporter->meterOutputFd, 0);
    if (pSupporter->meterOutputMMapBuf == MAP_FAILED) {
      dError("QInfo:%p failed to map data file: %s to disk. %s", pQInfo, pSupporter->extBufFile, strerror(errno));
      return TSDB_CODE_SERV_OUT_OF_MEMORY;
    }
  }


  if (!isPointInterpoQuery(pQuery)) {
    pQuery->interpoType = TSDB_INTERPO_NONE;
  }

  TSKEY revisedStime = taosGetIntervalStartTimestamp(pSupporter->rawSKey, pQuery->nAggTimeInterval,
                                                     pQuery->intervalTimeUnit, pQuery->precision);
  taosInitInterpoInfo(&pSupporter->runtimeEnv.interpoInfo, pQuery->order.order, revisedStime, 0, 0);

  return TSDB_CODE_SUCCESS;
}
