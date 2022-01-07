
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
typedef struct TYPE_28__ TYPE_10__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_33__ {size_t numOfSlots; TYPE_8__** pBuffer; TYPE_4__* pBoundingEntries; } ;
typedef TYPE_5__ tMemBucketSegment ;
struct TYPE_29__ {int i64MinVal; scalar_t__ i64MaxVal; } ;
struct TYPE_34__ {size_t numOfSegs; int dataType; scalar_t__ maxElemsCapacity; size_t nElemSize; TYPE_5__* pSegs; scalar_t__ numOfElems; TYPE_1__ nRange; int numOfAvailPages; int pOrderDesc; } ;
typedef TYPE_6__ tMemBucket ;
struct TYPE_35__ {scalar_t__ numOfPages; int startPageId; } ;
typedef TYPE_7__ tFlushoutInfo ;
struct TYPE_30__ {TYPE_7__* pFlushoutInfo; } ;
struct TYPE_31__ {scalar_t__ nFileSize; TYPE_2__ flushoutData; } ;
struct TYPE_36__ {size_t numOfAllElems; char* data; int nPageSize; scalar_t__ numOfElemsInBuffer; int dataFilePath; int dataFile; int numOfElems; TYPE_3__ fileMeta; scalar_t__ numOfPagesInMem; } ;
typedef TYPE_8__ tFilePage ;
typedef TYPE_8__ tExtMemBuffer ;
typedef double int8_t ;
typedef scalar_t__ int64_t ;
typedef size_t int32_t ;
typedef double int16_t ;
struct TYPE_32__ {double iMaxVal; double dMaxVal; int i64MinVal; scalar_t__ i64MaxVal; } ;
struct TYPE_28__ {double iMinVal; double dMinVal; scalar_t__ i64MinVal; } ;
typedef TYPE_10__ MinMaxEntry ;


 int SEEK_SET ;






 int UNUSED (size_t) ;
 int assert (int) ;
 int fclose (int ) ;
 size_t fread (TYPE_8__*,int,int,int ) ;
 int free (TYPE_8__*) ;
 size_t fseek (int ,int,int ) ;
 char* getFirstElemOfMemBuffer (TYPE_5__*,size_t,TYPE_8__*) ;
 TYPE_10__ getMinMaxEntryOfNextSlotWithData (TYPE_6__*,size_t,size_t) ;
 scalar_t__ isIdenticalData (TYPE_6__*,size_t,size_t) ;
 TYPE_8__* loadIntoBucketFromDisk (TYPE_6__*,size_t,size_t,int ) ;
 scalar_t__ malloc (int) ;
 int pError (char*,TYPE_6__*,int ) ;
 int pTrace (char*,TYPE_6__*,...) ;
 int resetBoundingBox (TYPE_5__*,int) ;
 int tExtMemBufferDestroy (TYPE_8__**) ;
 int tExtMemBufferFlush (TYPE_8__*) ;
 int tMemBucketPut (TYPE_6__*,char*,int ) ;
 int tfree (TYPE_8__*) ;
 scalar_t__ unlink (int ) ;

double getPercentileImpl(tMemBucket *pMemBucket, int32_t count, double fraction) {
  int32_t num = 0;

  for (int32_t i = 0; i < pMemBucket->numOfSegs; ++i) {
    tMemBucketSegment *pSeg = &pMemBucket->pSegs[i];
    for (int32_t j = 0; j < pSeg->numOfSlots; ++j) {
      if (pSeg->pBuffer == ((void*)0) || pSeg->pBuffer[j] == ((void*)0)) {
        continue;
      }

      if (num < (count + 1) && num + pSeg->pBuffer[j]->numOfAllElems >= (count + 1)) {
        if (pSeg->pBuffer[j]->numOfAllElems + num == (count + 1)) {





          MinMaxEntry next = getMinMaxEntryOfNextSlotWithData(pMemBucket, i, j);

          double maxOfThisSlot = 0;
          double minOfNextSlot = 0;
          switch (pMemBucket->dataType) {
            case 130:
            case 129:
            case 128: {
              maxOfThisSlot = pSeg->pBoundingEntries[j].iMaxVal;
              minOfNextSlot = next.iMinVal;
              break;
            };
            case 131:
            case 132: {
              maxOfThisSlot = pSeg->pBoundingEntries[j].dMaxVal;
              minOfNextSlot = next.dMinVal;
              break;
            };
            case 133: {
              maxOfThisSlot = (double)pSeg->pBoundingEntries[j].i64MaxVal;
              minOfNextSlot = (double)next.i64MinVal;
              break;
            }
          };

          assert(minOfNextSlot > maxOfThisSlot);

          double val = (1 - fraction) * maxOfThisSlot + fraction * minOfNextSlot;
          return val;
        }
        if (pSeg->pBuffer[j]->numOfAllElems <= pMemBucket->maxElemsCapacity) {

          tFilePage *buffer = loadIntoBucketFromDisk(pMemBucket, i, j, pMemBucket->pOrderDesc);
          int32_t currentIdx = count - num;

          char * thisVal = buffer->data + pMemBucket->nElemSize * currentIdx;
          char * nextVal = thisVal + pMemBucket->nElemSize;
          double td, nd;
          switch (pMemBucket->dataType) {
            case 129: {
              td = *(int16_t *)thisVal;
              nd = *(int16_t *)nextVal;
              break;
            }
            case 128: {
              td = *(int8_t *)thisVal;
              nd = *(int8_t *)nextVal;
              break;
            }
            case 130: {
              td = *(int32_t *)thisVal;
              nd = *(int32_t *)nextVal;
              break;
            };
            case 131: {
              td = *(float *)thisVal;
              nd = *(float *)nextVal;
              break;
            }
            case 132: {
              td = *(double *)thisVal;
              nd = *(double *)nextVal;
              break;
            }
            case 133: {
              td = (double)*(int64_t *)thisVal;
              nd = (double)*(int64_t *)nextVal;
              break;
            }
          }
          double val = (1 - fraction) * td + fraction * nd;
          tfree(buffer);

          return val;
        } else {
          if (isIdenticalData(pMemBucket, i, j)) {
            tExtMemBuffer *pMemBuffer = pSeg->pBuffer[j];

            tFilePage *pPage = (tFilePage *)malloc(pMemBuffer->nPageSize);

            char *thisVal = getFirstElemOfMemBuffer(pSeg, j, pPage);

            double finalResult = 0.0;

            switch (pMemBucket->dataType) {
              case 129: {
                finalResult = *(int16_t *)thisVal;
                break;
              }
              case 128: {
                finalResult = *(int8_t *)thisVal;
                break;
              }
              case 130: {
                finalResult = *(int32_t *)thisVal;
                break;
              };
              case 131: {
                finalResult = *(float *)thisVal;
                break;
              }
              case 132: {
                finalResult = *(double *)thisVal;
                break;
              }
              case 133: {
                finalResult = (double)*(int64_t *)thisVal;
                break;
              }
            }

            free(pPage);
            return finalResult;
          }

          pTrace("MemBucket:%p,start second round bucketing", pMemBucket);

          if (pSeg->pBuffer[j]->numOfElemsInBuffer != 0) {
            pTrace("MemBucket:%p,flush %d pages to disk, clear status", pMemBucket, pSeg->pBuffer[j]->numOfPagesInMem);

            pMemBucket->numOfAvailPages += pSeg->pBuffer[j]->numOfPagesInMem;
            tExtMemBufferFlush(pSeg->pBuffer[j]);
          }

          tExtMemBuffer *pMemBuffer = pSeg->pBuffer[j];
          pSeg->pBuffer[j] = ((void*)0);


          for (int32_t tt = 0; tt < pMemBucket->numOfSegs; ++tt) {
            tMemBucketSegment *pSeg = &pMemBucket->pSegs[tt];
            for (int32_t ttx = 0; ttx < pSeg->numOfSlots; ++ttx) {
              if (pSeg->pBuffer && pSeg->pBuffer[ttx]) {
                tExtMemBufferDestroy(&pSeg->pBuffer[ttx]);
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
                resetBoundingBox(pSeg, pMemBucket->dataType);
              }
            }
          }

          tFilePage *pPage = (tFilePage *)malloc(pMemBuffer->nPageSize);

          tFlushoutInfo *pFlushInfo = &pMemBuffer->fileMeta.flushoutData.pFlushoutInfo[0];
          assert(pFlushInfo->numOfPages == pMemBuffer->fileMeta.nFileSize);

          int32_t ret = fseek(pMemBuffer->dataFile, pFlushInfo->startPageId * pMemBuffer->nPageSize, SEEK_SET);
          UNUSED(ret);

          for (uint32_t jx = 0; jx < pFlushInfo->numOfPages; ++jx) {
            ret = fread(pPage, pMemBuffer->nPageSize, 1, pMemBuffer->dataFile);
            tMemBucketPut(pMemBucket, pPage->data, pPage->numOfElems);
          }

          fclose(pMemBuffer->dataFile);
          if (unlink(pMemBuffer->dataFilePath) != 0) {
            pError("MemBucket:%p,remove tmp file %s failed", pMemBucket, pMemBuffer->dataFilePath);
          }
          tfree(pMemBuffer);
          tfree(pPage);

          return getPercentileImpl(pMemBucket, count - num, fraction);
        }
      } else {
        num += pSeg->pBuffer[j]->numOfAllElems;
      }
    }
  }
  return 0;
}
