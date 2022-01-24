#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_8__ ;
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_33__ {size_t numOfSlots; TYPE_8__** pBuffer; TYPE_4__* pBoundingEntries; } ;
typedef  TYPE_5__ tMemBucketSegment ;
struct TYPE_29__ {int /*<<< orphan*/  i64MinVal; scalar_t__ i64MaxVal; } ;
struct TYPE_34__ {size_t numOfSegs; int dataType; scalar_t__ maxElemsCapacity; size_t nElemSize; TYPE_5__* pSegs; scalar_t__ numOfElems; TYPE_1__ nRange; int /*<<< orphan*/  numOfAvailPages; int /*<<< orphan*/  pOrderDesc; } ;
typedef  TYPE_6__ tMemBucket ;
struct TYPE_35__ {scalar_t__ numOfPages; int startPageId; } ;
typedef  TYPE_7__ tFlushoutInfo ;
struct TYPE_30__ {TYPE_7__* pFlushoutInfo; } ;
struct TYPE_31__ {scalar_t__ nFileSize; TYPE_2__ flushoutData; } ;
struct TYPE_36__ {size_t numOfAllElems; char* data; int nPageSize; scalar_t__ numOfElemsInBuffer; int /*<<< orphan*/  dataFilePath; int /*<<< orphan*/  dataFile; int /*<<< orphan*/  numOfElems; TYPE_3__ fileMeta; scalar_t__ numOfPagesInMem; } ;
typedef  TYPE_8__ tFilePage ;
typedef  TYPE_8__ tExtMemBuffer ;
typedef  double int8_t ;
typedef  scalar_t__ int64_t ;
typedef  size_t int32_t ;
typedef  double int16_t ;
struct TYPE_32__ {double iMaxVal; double dMaxVal; int /*<<< orphan*/  i64MinVal; scalar_t__ i64MaxVal; } ;
struct TYPE_28__ {double iMinVal; double dMinVal; scalar_t__ i64MinVal; } ;
typedef  TYPE_10__ MinMaxEntry ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
#define  TSDB_DATA_TYPE_BIGINT 133 
#define  TSDB_DATA_TYPE_DOUBLE 132 
#define  TSDB_DATA_TYPE_FLOAT 131 
#define  TSDB_DATA_TYPE_INT 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (TYPE_8__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (TYPE_5__*,size_t,TYPE_8__*) ; 
 TYPE_10__ FUNC7 (TYPE_6__*,size_t,size_t) ; 
 scalar_t__ FUNC8 (TYPE_6__*,size_t,size_t) ; 
 TYPE_8__* FUNC9 (TYPE_6__*,size_t,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,TYPE_6__*,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_8__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

double FUNC19(tMemBucket *pMemBucket, int32_t count, double fraction) {
  int32_t num = 0;

  for (int32_t i = 0; i < pMemBucket->numOfSegs; ++i) {
    tMemBucketSegment *pSeg = &pMemBucket->pSegs[i];
    for (int32_t j = 0; j < pSeg->numOfSlots; ++j) {
      if (pSeg->pBuffer == NULL || pSeg->pBuffer[j] == NULL) {
        continue;
      }
      // required value in current slot
      if (num < (count + 1) && num + pSeg->pBuffer[j]->numOfAllElems >= (count + 1)) {
        if (pSeg->pBuffer[j]->numOfAllElems + num == (count + 1)) {
          /*
           * now, we need to find the minimum value of the next slot for interpolating the percentile value
           * j is the last slot of current segment, we need to get the first slot of the next segment.
           *
           */
          MinMaxEntry next = FUNC7(pMemBucket, i, j);

          double maxOfThisSlot = 0;
          double minOfNextSlot = 0;
          switch (pMemBucket->dataType) {
            case TSDB_DATA_TYPE_INT:
            case TSDB_DATA_TYPE_SMALLINT:
            case TSDB_DATA_TYPE_TINYINT: {
              maxOfThisSlot = pSeg->pBoundingEntries[j].iMaxVal;
              minOfNextSlot = next.iMinVal;
              break;
            };
            case TSDB_DATA_TYPE_FLOAT:
            case TSDB_DATA_TYPE_DOUBLE: {
              maxOfThisSlot = pSeg->pBoundingEntries[j].dMaxVal;
              minOfNextSlot = next.dMinVal;
              break;
            };
            case TSDB_DATA_TYPE_BIGINT: {
              maxOfThisSlot = (double)pSeg->pBoundingEntries[j].i64MaxVal;
              minOfNextSlot = (double)next.i64MinVal;
              break;
            }
          };

          FUNC1(minOfNextSlot > maxOfThisSlot);

          double val = (1 - fraction) * maxOfThisSlot + fraction * minOfNextSlot;
          return val;
        }
        if (pSeg->pBuffer[j]->numOfAllElems <= pMemBucket->maxElemsCapacity) {
          // data in buffer and file are merged together to be processed.
          tFilePage *buffer = FUNC9(pMemBucket, i, j, pMemBucket->pOrderDesc);
          int32_t    currentIdx = count - num;

          char * thisVal = buffer->data + pMemBucket->nElemSize * currentIdx;
          char * nextVal = thisVal + pMemBucket->nElemSize;
          double td, nd;
          switch (pMemBucket->dataType) {
            case TSDB_DATA_TYPE_SMALLINT: {
              td = *(int16_t *)thisVal;
              nd = *(int16_t *)nextVal;
              break;
            }
            case TSDB_DATA_TYPE_TINYINT: {
              td = *(int8_t *)thisVal;
              nd = *(int8_t *)nextVal;
              break;
            }
            case TSDB_DATA_TYPE_INT: {
              td = *(int32_t *)thisVal;
              nd = *(int32_t *)nextVal;
              break;
            };
            case TSDB_DATA_TYPE_FLOAT: {
              td = *(float *)thisVal;
              nd = *(float *)nextVal;
              break;
            }
            case TSDB_DATA_TYPE_DOUBLE: {
              td = *(double *)thisVal;
              nd = *(double *)nextVal;
              break;
            }
            case TSDB_DATA_TYPE_BIGINT: {
              td = (double)*(int64_t *)thisVal;
              nd = (double)*(int64_t *)nextVal;
              break;
            }
          }
          double val = (1 - fraction) * td + fraction * nd;
          FUNC17(buffer);

          return val;
        } else {  // incur a second round bucket split
          if (FUNC8(pMemBucket, i, j)) {
            tExtMemBuffer *pMemBuffer = pSeg->pBuffer[j];

            tFilePage *pPage = (tFilePage *)FUNC10(pMemBuffer->nPageSize);

            char *thisVal = FUNC6(pSeg, j, pPage);

            double finalResult = 0.0;

            switch (pMemBucket->dataType) {
              case TSDB_DATA_TYPE_SMALLINT: {
                finalResult = *(int16_t *)thisVal;
                break;
              }
              case TSDB_DATA_TYPE_TINYINT: {
                finalResult = *(int8_t *)thisVal;
                break;
              }
              case TSDB_DATA_TYPE_INT: {
                finalResult = *(int32_t *)thisVal;
                break;
              };
              case TSDB_DATA_TYPE_FLOAT: {
                finalResult = *(float *)thisVal;
                break;
              }
              case TSDB_DATA_TYPE_DOUBLE: {
                finalResult = *(double *)thisVal;
                break;
              }
              case TSDB_DATA_TYPE_BIGINT: {
                finalResult = (double)*(int64_t *)thisVal;
                break;
              }
            }

            FUNC4(pPage);
            return finalResult;
          }

          FUNC12("MemBucket:%p,start second round bucketing", pMemBucket);

          if (pSeg->pBuffer[j]->numOfElemsInBuffer != 0) {
            FUNC12("MemBucket:%p,flush %d pages to disk, clear status", pMemBucket, pSeg->pBuffer[j]->numOfPagesInMem);

            pMemBucket->numOfAvailPages += pSeg->pBuffer[j]->numOfPagesInMem;
            FUNC15(pSeg->pBuffer[j]);
          }

          tExtMemBuffer *pMemBuffer = pSeg->pBuffer[j];
          pSeg->pBuffer[j] = NULL;

          // release all
          for (int32_t tt = 0; tt < pMemBucket->numOfSegs; ++tt) {
            tMemBucketSegment *pSeg = &pMemBucket->pSegs[tt];
            for (int32_t ttx = 0; ttx < pSeg->numOfSlots; ++ttx) {
              if (pSeg->pBuffer && pSeg->pBuffer[ttx]) {
                FUNC14(&pSeg->pBuffer[ttx]);
              }
            }
          }

          pMemBucket->nRange.i64MaxVal = pSeg->pBoundingEntries->i64MaxVal;
          pMemBucket->nRange.i64MinVal = pSeg->pBoundingEntries->i64MinVal;
          pMemBucket->numOfElems = 0;

          for (int32_t tt = 0; tt < pMemBucket->numOfSegs; ++tt) {
            tMemBucketSegment *pSeg = &pMemBucket->pSegs[tt];
            for (int32_t ttx = 0; ttx < pSeg->numOfSlots; ++ttx) {
              if (pSeg->pBoundingEntries) {
                FUNC13(pSeg, pMemBucket->dataType);
              }
            }
          }

          tFilePage *pPage = (tFilePage *)FUNC10(pMemBuffer->nPageSize);

          tFlushoutInfo *pFlushInfo = &pMemBuffer->fileMeta.flushoutData.pFlushoutInfo[0];
          FUNC1(pFlushInfo->numOfPages == pMemBuffer->fileMeta.nFileSize);

          int32_t ret = FUNC5(pMemBuffer->dataFile, pFlushInfo->startPageId * pMemBuffer->nPageSize, SEEK_SET);
          FUNC0(ret);

          for (uint32_t jx = 0; jx < pFlushInfo->numOfPages; ++jx) {
            ret = FUNC3(pPage, pMemBuffer->nPageSize, 1, pMemBuffer->dataFile);
            FUNC16(pMemBucket, pPage->data, pPage->numOfElems);
          }

          FUNC2(pMemBuffer->dataFile);
          if (FUNC18(pMemBuffer->dataFilePath) != 0) {
            FUNC11("MemBucket:%p,remove tmp file %s failed", pMemBucket, pMemBuffer->dataFilePath);
          }
          FUNC17(pMemBuffer);
          FUNC17(pPage);

          return FUNC19(pMemBucket, count - num, fraction);
        }
      } else {
        num += pSeg->pBuffer[j]->numOfAllElems;
      }
    }
  }
  return 0;
}