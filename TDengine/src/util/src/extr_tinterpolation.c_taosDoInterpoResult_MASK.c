#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ tFilePage ;
struct TYPE_16__ {int* colOffset; size_t numOfCols; TYPE_1__* pFields; } ;
typedef  TYPE_3__ tColModel ;
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ int16_t ;
struct TYPE_17__ {char* prevValues; char* nextValues; scalar_t__ numOfTags; char** pTags; scalar_t__ startTimestamp; size_t rowIdx; scalar_t__ numOfRawDataInRows; scalar_t__ numOfCurrentInterpo; int /*<<< orphan*/  numOfTotalInterpo; int /*<<< orphan*/  order; } ;
struct TYPE_14__ {int bytes; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ SInterpolationInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 scalar_t__ TSDB_FUNC_COUNT ; 
 scalar_t__ TSDB_INTERPO_LINEAR ; 
 scalar_t__ TSDB_INTERPO_PREV ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__,TYPE_2__**,TYPE_3__*,scalar_t__*,char**,scalar_t__,scalar_t__*,scalar_t__,scalar_t__,scalar_t__,char**,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**,char**,TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int32_t FUNC11(SInterpolationInfo* pInterpoInfo, int16_t interpoType, tFilePage** data,
                            int32_t numOfRawDataInRows, int32_t outputRows, int64_t nInterval,
                            int64_t* pPrimaryKeyArray, tColModel* pModel, char** srcData, int64_t* defaultVal,
                            int32_t* functionIDs, int32_t bufSize) {
  int32_t num = 0;
  pInterpoInfo->numOfCurrentInterpo = 0;

  char** prevValues = &pInterpoInfo->prevValues;
  char** nextValues = &pInterpoInfo->nextValues;

  int32_t numOfTags = pInterpoInfo->numOfTags;
  char**  pTags = pInterpoInfo->pTags;

  int32_t step = FUNC0(pInterpoInfo->order);

  if (numOfRawDataInRows == 0) {
    /*
     * we need to rebuild whole data
     * NOTE:we need to keep the last saved data, to satisfy the interpolation
     */
    while (num < outputRows) {
      FUNC4(pInterpoInfo, interpoType, data, pModel, &num, srcData, nInterval, defaultVal,
                          pInterpoInfo->startTimestamp, bufSize, numOfTags, pTags, true);
    }
    pInterpoInfo->numOfTotalInterpo += pInterpoInfo->numOfCurrentInterpo;
    return outputRows;

  } else {
    while (1) {
      int64_t currentTimestamp = pPrimaryKeyArray[pInterpoInfo->rowIdx];

      if ((pInterpoInfo->startTimestamp < currentTimestamp && FUNC1(pInterpoInfo)) ||
          (pInterpoInfo->startTimestamp > currentTimestamp && !FUNC1(pInterpoInfo))) {
        /* set the next value for interpolation */
        if (*nextValues == NULL) {
          *nextValues =
              FUNC3(1, pModel->colOffset[pModel->numOfCols - 1] + pModel->pFields[pModel->numOfCols - 1].bytes);
          for (int i = 1; i < pModel->numOfCols; i++) {
            FUNC8(*nextValues + pModel->colOffset[i], pModel->pFields[i].type, pModel->pFields[i].bytes);
          }
        }

        int32_t offset = pInterpoInfo->rowIdx;
        for (int32_t tlen = 0, i = 0; i < pModel->numOfCols - numOfTags; ++i) {
          FUNC7(*nextValues + tlen, srcData[i] + offset * pModel->pFields[i].bytes, pModel->pFields[i].bytes);
          tlen += pModel->pFields[i].bytes;
        }
      }

      while (((pInterpoInfo->startTimestamp < currentTimestamp && FUNC1(pInterpoInfo)) ||
              (pInterpoInfo->startTimestamp > currentTimestamp && !FUNC1(pInterpoInfo))) &&
             num < outputRows) {
        FUNC4(pInterpoInfo, interpoType, data, pModel, &num, srcData, nInterval, defaultVal,
                            currentTimestamp, bufSize, numOfTags, pTags, false);
      }

      /* output buffer is full, abort */
      if ((num == outputRows && FUNC1(pInterpoInfo)) ||
          (num < 0 && !FUNC1(pInterpoInfo))) {
        pInterpoInfo->numOfTotalInterpo += pInterpoInfo->numOfCurrentInterpo;
        return outputRows;
      }

      if (pInterpoInfo->startTimestamp == currentTimestamp) {
        if (*prevValues == NULL) {
          *prevValues =
              FUNC3(1, pModel->colOffset[pModel->numOfCols - 1] + pModel->pFields[pModel->numOfCols - 1].bytes);
          for (int i = 1; i < pModel->numOfCols; i++) {
            FUNC8(*prevValues + pModel->colOffset[i], pModel->pFields[i].type, pModel->pFields[i].bytes);
          }
        }

        // assign rows to dst buffer
        int32_t i = 0;
        for (int32_t tlen = 0; i < pModel->numOfCols - numOfTags; ++i) {
          char* val1 = FUNC5(data[i]->data, pModel->pFields[i].bytes, pInterpoInfo->order, bufSize, num);

          if (i == 0 ||
              (functionIDs[i] != TSDB_FUNC_COUNT &&
               !FUNC6(srcData[i] + pInterpoInfo->rowIdx * pModel->pFields[i].bytes, pModel->pFields[i].type)) ||
              (functionIDs[i] == TSDB_FUNC_COUNT &&
               *(int64_t*)(srcData[i] + pInterpoInfo->rowIdx * pModel->pFields[i].bytes) != 0)) {
            FUNC2(val1, srcData[i] + pInterpoInfo->rowIdx * pModel->pFields[i].bytes, pModel->pFields[i].bytes,
                      pModel->pFields[i].type);
            FUNC7(*prevValues + tlen, srcData[i] + pInterpoInfo->rowIdx * pModel->pFields[i].bytes,
                   pModel->pFields[i].bytes);
          } else {  // i > 0 and isNULL, do interpolation
            if (interpoType == TSDB_INTERPO_PREV) {
              FUNC2(val1, *prevValues + pModel->colOffset[i], pModel->pFields[i].bytes, pModel->pFields[i].type);
            } else if (interpoType == TSDB_INTERPO_LINEAR) {
              // TODO:
            } else {
              FUNC2(val1, (char*)&defaultVal[i], pModel->pFields[i].bytes, pModel->pFields[i].type);
            }
          }
          tlen += pModel->pFields[i].bytes;
        }

        /* set the tag value for final result */
        FUNC9(data, pTags, pModel, pInterpoInfo->order, pModel->numOfCols - numOfTags, bufSize,
                                    num);
      }

      pInterpoInfo->startTimestamp += (nInterval * step);
      pInterpoInfo->rowIdx += step;
      num += 1;

      if ((pInterpoInfo->rowIdx >= pInterpoInfo->numOfRawDataInRows && FUNC1(pInterpoInfo)) ||
          (pInterpoInfo->rowIdx < 0 && !FUNC1(pInterpoInfo)) || num >= outputRows) {
        if (pInterpoInfo->rowIdx >= pInterpoInfo->numOfRawDataInRows || pInterpoInfo->rowIdx < 0) {
          pInterpoInfo->rowIdx = -1;
          pInterpoInfo->numOfRawDataInRows = 0;

          /* the raw data block is exhausted, next value does not exists */
          FUNC10(*nextValues);
        }

        pInterpoInfo->numOfTotalInterpo += pInterpoInfo->numOfCurrentInterpo;
        return num;
      }
    }
  }
}