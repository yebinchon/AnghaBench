
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ pData; struct TYPE_11__** pForward; } ;
typedef TYPE_4__ tSkipListNode ;
typedef double int64_t ;
typedef int int32_t ;
struct TYPE_13__ {double num; double val; } ;
struct TYPE_12__ {double numOfElems; double min; double max; int numOfEntries; TYPE_3__* pList; TYPE_1__* elems; } ;
struct TYPE_9__ {TYPE_4__** pForward; } ;
struct TYPE_10__ {TYPE_2__ pHead; } ;
struct TYPE_8__ {double num; double val; } ;
typedef TYPE_5__ SHistogramInfo ;
typedef TYPE_6__ SHistBin ;


 scalar_t__ FLT_EPSILON ;
 int assert (int) ;
 scalar_t__ fabs (double) ;
 double* malloc (int) ;
 int printf (char*,double,double,double) ;
 int sqrt (int) ;

double* tHistogramUniform(SHistogramInfo* pHisto, double* ratio, int32_t num) {
  double* pVal = malloc(num * sizeof(double));

  for (int32_t i = 0; i < num; ++i) {
    double numOfElem = ratio[i] * pHisto->numOfElems;

    tSkipListNode* pFirst = pHisto->pList->pHead.pForward[0];
    SHistBin* pEntry = (SHistBin*)pFirst->pData;
    if (numOfElem == 0) {
      pVal[i] = pHisto->min;
      printf("i/numofSlot: %f, v:%f, %f\n", ratio[i], numOfElem, pVal[i]);
      continue;
    } else if (numOfElem <= pEntry->num) {
      pVal[i] = pEntry->val;
      printf("i/numofSlot: %f, v:%f, %f\n", ratio[i], numOfElem, pVal[i]);
      continue;
    } else if (numOfElem == pHisto->numOfElems) {
      pVal[i] = pHisto->max;
      printf("i/numofSlot: %f, v:%f, %f\n", ratio[i], numOfElem, pVal[i]);
      continue;
    }

    int32_t j = 0;
    int64_t total = 0;
    SHistBin* pPrev = pEntry;

    while (j < pHisto->numOfEntries) {
      if (total <= numOfElem && total + pEntry->num > numOfElem) {
        break;
      }

      total += pEntry->num;
      pPrev = pEntry;

      pFirst = pFirst->pForward[0];
      pEntry = (SHistBin*)pFirst->pData;

      j += 1;
    }

    assert(total <= numOfElem && total + pEntry->num > numOfElem);

    double delta = numOfElem - total;
    if (fabs(delta) < FLT_EPSILON) {


      pVal[i] = pPrev->val;
    }

    double start = pPrev->num;
    double range = pEntry->num - start;

    if (range == 0) {
      pVal[i] = (pEntry->val - pPrev->val) * delta / start + pPrev->val;
    } else {
      double factor = (-2 * start + sqrt(4 * start * start - 4 * range * (-2 * delta))) / (2 * range);
      pVal[i] = pPrev->val + (pEntry->val - pPrev->val) * factor;
    }


  }

  return pVal;
}
