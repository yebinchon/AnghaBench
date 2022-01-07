
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int * pTSBuf; } ;
struct TYPE_15__ {scalar_t__ rawEKey; TYPE_8__ runtimeEnv; } ;
struct TYPE_12__ {scalar_t__ offset; } ;
struct TYPE_13__ {scalar_t__ numOfFilterCols; scalar_t__ interpoType; scalar_t__ nAggTimeInterval; scalar_t__ skey; scalar_t__ ekey; scalar_t__ lastKey; int over; TYPE_1__ limit; } ;
struct TYPE_14__ {int over; int dataReady; TYPE_2__ query; } ;
typedef TYPE_2__ SQuery ;
typedef TYPE_3__ SQInfo ;
typedef TYPE_4__ SMeterQuerySupportObj ;


 int QUERY_COMPLETED ;
 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_2__*) ;
 int QUERY_NO_DATA_TO_CHECK ;
 scalar_t__ Q_STATUS_EQUAL (int ,int ) ;
 scalar_t__ TSDB_INTERPO_NONE ;
 int forwardQueryStartPosition (TYPE_8__*) ;
 int isTopBottomQuery (TYPE_2__*) ;
 int normalizedFirstQueryRange (int,int,TYPE_4__*,int *) ;
 int sem_post (int *) ;
 int setQueryStatus (TYPE_2__*,int ) ;

__attribute__((used)) static bool forwardQueryStartPosIfNeeded(SQInfo *pQInfo, SMeterQuerySupportObj *pSupporter, bool dataInDisk,
                                         bool dataInCache) {
  SQuery *pQuery = &pQInfo->query;


  if (pQuery->numOfFilterCols > 0 || pSupporter->runtimeEnv.pTSBuf != ((void*)0)) {
    return 1;
  }

  if (pQuery->limit.offset > 0 && (!isTopBottomQuery(pQuery)) && pQuery->interpoType == TSDB_INTERPO_NONE) {






    if (pQuery->nAggTimeInterval > 0) {
      while (1) {






        if (QUERY_IS_ASC_QUERY(pQuery)) {
          pQuery->skey = pQuery->ekey + 1;
        } else {
          pQuery->skey = pQuery->ekey - 1;
        }


        if ((pQuery->skey > pSupporter->rawEKey && QUERY_IS_ASC_QUERY(pQuery)) ||
            (pQuery->skey < pSupporter->rawEKey && !QUERY_IS_ASC_QUERY(pQuery))) {
          setQueryStatus(pQuery, QUERY_COMPLETED);

          sem_post(&pQInfo->dataReady);
          pQInfo->over = 1;
          return 0;
        }





        pQuery->ekey = pSupporter->rawEKey;
        pQuery->lastKey = pQuery->skey;


        if (normalizedFirstQueryRange(dataInDisk, dataInCache, pSupporter, ((void*)0)) == 0) {
          sem_post(&pQInfo->dataReady);
          pQInfo->over = 1;
          return 0;
        }

        if (--pQuery->limit.offset == 0) {
          break;
        }
      }
    } else {
      forwardQueryStartPosition(&pSupporter->runtimeEnv);
      if (Q_STATUS_EQUAL(pQuery->over, QUERY_NO_DATA_TO_CHECK)) {
        setQueryStatus(pQuery, QUERY_COMPLETED);

        sem_post(&pQInfo->dataReady);
        pQInfo->over = 1;
        return 0;
      }
    }
  }

  return 1;
}
