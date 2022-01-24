#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  size_t tQueryResultset ;
typedef  scalar_t__ int64_t ;
typedef  size_t int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_18__ {int /*<<< orphan*/  meterId; int /*<<< orphan*/  numOfTags; scalar_t__ tagCols; } ;
struct TYPE_17__ {int numOfMeters; int* metaElem; } ;
struct TYPE_16__ {TYPE_1__* pSkipList; } ;
struct TYPE_15__ {scalar_t__ nSize; } ;
typedef  TYPE_2__ STabObj ;
typedef  TYPE_3__ SMetricMetaMsg ;
typedef  TYPE_4__ SMetricMetaElemMsg ;

/* Variables and functions */
 size_t INT32_MAX ; 
 int TSDB_CODE_NOT_SUPER_TABLE ; 
 int TSDB_CODE_SUCCESS ; 
 size_t* FUNC0 (int,int) ; 
 TYPE_4__* FUNC1 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t*) ; 
 int FUNC3 (void*,TYPE_3__*,size_t*,char**,size_t*,int,size_t,int) ; 
 int FUNC4 (TYPE_3__*,size_t*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (size_t*,size_t,size_t) ; 
 size_t FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,size_t,size_t*) ; 
 int FUNC10 (TYPE_3__*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (size_t*) ; 

int FUNC12(void *thandle, char **pStart, SMetricMetaMsg *pMetricMetaMsg) {
  /*
   * naive method: Do not limit the maximum number of meters in each
   * vnode(subquery), split the result according to vnodes
   *
   * todo: split the number of vnodes to make sure each vnode has the same
   * number of tables to query, while not break the upper limit of number of vnode queries
   */
  int32_t          maxMetersPerVNodeForQuery = INT32_MAX;
  int              msgLen = 0;
  int              ret = TSDB_CODE_SUCCESS;
  tQueryResultset *result = FUNC0(1, pMetricMetaMsg->numOfMeters * sizeof(tQueryResultset));
  int32_t *        tagLen = FUNC0(1, sizeof(int32_t) * pMetricMetaMsg->numOfMeters);

  if (result == NULL || tagLen == NULL) {
    return -1;
  }

  for (int32_t i = 0; i < pMetricMetaMsg->numOfMeters; ++i) {
    SMetricMetaElemMsg *pElem = FUNC1(pMetricMetaMsg, i);
    STabObj *           pMetric = FUNC5(pElem->meterId);

    if (!FUNC8(pMetric)) {
      ret = TSDB_CODE_NOT_SUPER_TABLE;
      break;
    }

    tagLen[i] = FUNC7(pMetric, (int16_t *)pElem->tagCols, pElem->numOfTags);
  }

#if 0
    //todo: opt for join process
    int64_t num = 0;
    int32_t index = 0;

    for (int32_t i = 0; i < pMetricMetaMsg->numOfMeters; ++i) {
        SMetricMetaElemMsg *pElem = (SMetricMetaElemMsg*) ((char *) pMetricMetaMsg + pMetricMetaMsg->metaElem[i]);
        STabObj *pMetric = mgmtGetMeter(pElem->meterId);

        if (pMetric->pSkipList->nSize > num) {
            index = i;
            num = pMetric->pSkipList->nSize;
        }
    }
#endif

  if (ret == TSDB_CODE_SUCCESS) {
    for (int32_t i = 0; i < pMetricMetaMsg->numOfMeters; ++i) {
      ret = FUNC10(pMetricMetaMsg, i, &result[i]);
      // todo opt performance
      //      if (result[i].num <= 0) {//no result
      //      } else if (result[i].num < 10) {
      //      }
    }
  }

  if (ret == TSDB_CODE_SUCCESS) {
    ret = FUNC4(pMetricMetaMsg, result);
  }

  if (ret == TSDB_CODE_SUCCESS) {
    for (int32_t i = 0; i < pMetricMetaMsg->numOfMeters; ++i) {
      FUNC9(pMetricMetaMsg, i, &result[i]);
    }
  }

  if (ret == TSDB_CODE_SUCCESS) {
    for (int32_t i = 0; i < pMetricMetaMsg->numOfMeters; ++i) {
      msgLen += FUNC6(&result[i], tagLen[i], maxMetersPerVNodeForQuery);
    }
  } else {
    msgLen = 512;
  }

  msgLen = FUNC3(thandle, pMetricMetaMsg, result, pStart, tagLen, msgLen, maxMetersPerVNodeForQuery,
                                     ret);

  for (int32_t i = 0; i < pMetricMetaMsg->numOfMeters; ++i) {
    FUNC11(&result[i]);
  }

  FUNC2(tagLen);
  FUNC2(result);

  return msgLen;
}