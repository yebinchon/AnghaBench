
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_21__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {double dKey; } ;
struct TYPE_28__ {scalar_t__ pData; TYPE_3__** pBackward; struct TYPE_28__** pForward; TYPE_1__ key; } ;
typedef TYPE_4__ tSkipListNode ;
typedef int tSkipListKey ;
typedef size_t int32_t ;
struct TYPE_27__ {scalar_t__ pData; TYPE_4__** pForward; } ;
struct TYPE_33__ {TYPE_3__ pHead; } ;
struct TYPE_32__ {double val; int num; } ;
struct TYPE_31__ {double val; int index; scalar_t__ num; size_t delta; } ;
struct TYPE_30__ {int numOfEntries; size_t maxEntries; int numOfElems; int ordered; size_t maxIndex; double max; double min; TYPE_9__* pList; TYPE_5__* pLoserTree; TYPE_8__* elems; } ;
struct TYPE_29__ {size_t numOfEntries; size_t totalEntries; TYPE_2__* pNode; } ;
struct TYPE_26__ {int index; TYPE_4__* pData; } ;
struct TYPE_25__ {int nSize; } ;
typedef TYPE_5__ SLoserTreeInfo ;
typedef TYPE_6__ SHistogramInfo ;
typedef TYPE_7__ SHistBin ;


 void* DBL_MAX ;
 int MAX_HISTOGRAM_BIN ;
 size_t TSDB_DATA_TYPE_DOUBLE ;
 int assert (int) ;
 TYPE_7__* calloc (int,int) ;
 int histogramCreateBin (TYPE_6__*,size_t,double) ;
 int printf (char*,...) ;
 TYPE_21__* tDataTypeDesc ;
 TYPE_6__* tHistogramCreate (int ) ;
 int tLoserTreeAdjust (TYPE_5__*,size_t) ;
 int tLoserTreeDisplay (TYPE_5__*) ;
 int tSkipListCreateKey (size_t,double*,int ) ;
 TYPE_4__* tSkipListGetOne (TYPE_9__*,int *) ;
 int tSkipListPrint (TYPE_9__*,int) ;
 TYPE_4__* tSkipListPut (TYPE_9__*,TYPE_7__*,int *,int ) ;
 int tSkipListRemoveNode (TYPE_9__*,TYPE_4__*) ;
 size_t vnodeHistobinarySearch (TYPE_8__*,int,double) ;

int32_t tHistogramAdd(SHistogramInfo** pHisto, double val) {
  if (*pHisto == ((void*)0)) {
    *pHisto = tHistogramCreate(MAX_HISTOGRAM_BIN);
  }
  tSkipListKey key = tSkipListCreateKey(TSDB_DATA_TYPE_DOUBLE, &val, tDataTypeDesc[TSDB_DATA_TYPE_DOUBLE].nSize);
  SHistBin* entry = calloc(1, sizeof(SHistBin));
  entry->val = val;

  tSkipListNode* pResNode = tSkipListPut((*pHisto)->pList, entry, &key, 0);

  SHistBin* pEntry1 = (SHistBin*)pResNode->pData;
  pEntry1->index = -1;

  tSkipListNode* pLast = ((void*)0);

  if (pEntry1->num == 0) {
    (*pHisto)->numOfEntries += 1;
    pEntry1->num += 1;


    if (pResNode->pForward[0] != ((void*)0)) {

      pEntry1->delta = ((SHistBin*)pResNode->pForward[0]->pData)->val - val;

      if ((*pHisto)->ordered) {
        int32_t lastIndex = (*pHisto)->maxIndex;
        SLoserTreeInfo* pTree = (*pHisto)->pLoserTree;

        (*pHisto)->pLoserTree->pNode[lastIndex + pTree->numOfEntries].pData = pResNode;
        pEntry1->index = (*pHisto)->pLoserTree->pNode[lastIndex + pTree->numOfEntries].index;


        if ((*pHisto)->ordered) {
          tLoserTreeAdjust(pTree, pEntry1->index + pTree->numOfEntries);
        }

        tSkipListKey kx =
            tSkipListCreateKey(TSDB_DATA_TYPE_DOUBLE, &(*pHisto)->max, tDataTypeDesc[TSDB_DATA_TYPE_DOUBLE].nSize);
        pLast = tSkipListGetOne((*pHisto)->pList, &kx);
      }
    } else {


      pEntry1->delta = DBL_MAX;
      pLast = pResNode;
    }

    if (pResNode->pBackward[0] != &(*pHisto)->pList->pHead) {
      SHistBin* pPrevEntry = (SHistBin*)pResNode->pBackward[0]->pData;
      pPrevEntry->delta = val - pPrevEntry->val;

      SLoserTreeInfo* pTree = (*pHisto)->pLoserTree;
      if ((*pHisto)->ordered) {
        tLoserTreeAdjust(pTree, pPrevEntry->index + pTree->numOfEntries);
        tLoserTreeDisplay(pTree);
      }
    }

    if ((*pHisto)->numOfEntries >= (*pHisto)->maxEntries + 1) {

      assert((*pHisto)->pLoserTree != ((void*)0));
      if (!(*pHisto)->ordered) {
        tSkipListPrint((*pHisto)->pList, 1);

        SLoserTreeInfo* pTree = (*pHisto)->pLoserTree;
        tSkipListNode* pHead = (*pHisto)->pList->pHead.pForward[0];

        tSkipListNode* p1 = pHead;

        printf("\n");
        while (p1 != ((void*)0)) {
          printf("%f\t", ((SHistBin*)(p1->pData))->delta);
          p1 = p1->pForward[0];
        }
        printf("\n");


        for (int32_t i = pTree->numOfEntries; i < pTree->totalEntries; ++i) {
          pTree->pNode[i].pData = pHead;
          pTree->pNode[i].index = i - pTree->numOfEntries;
          SHistBin* pBin = (SHistBin*)pHead->pData;
          pBin->index = pTree->pNode[i].index;

          pHead = pHead->pForward[0];
        }

        pLast = pHead;

        for (int32_t i = 0; i < pTree->numOfEntries; ++i) {
          pTree->pNode[i].index = -1;
        }

        tLoserTreeDisplay(pTree);

        for (int32_t i = pTree->totalEntries - 1; i >= pTree->numOfEntries; i--) {
          tLoserTreeAdjust(pTree, i);
        }

        tLoserTreeDisplay(pTree);
        (*pHisto)->ordered = 1;
      }

      printf("delta is:%lf\n", pEntry1->delta);

      tSkipListPrint((*pHisto)->pList, 1);


      tSkipListNode* pNode = (*pHisto)->pLoserTree->pNode[0].pData;
      SHistBin* pEntry = (SHistBin*)pNode->pData;

      tSkipListNode* pNext = pNode->pForward[0];
      SHistBin* pNextEntry = (SHistBin*)pNext->pData;
      assert(pNextEntry->val - pEntry->val == pEntry->delta);

      double newVal = (pEntry->val * pEntry->num + pNextEntry->val * pNextEntry->num) / (pEntry->num + pNextEntry->num);
      pEntry->val = newVal;
      pNode->key.dKey = newVal;
      pEntry->num = pEntry->num + pNextEntry->num;


      pEntry->delta = (pNextEntry->delta + pNextEntry->val) - pEntry->val;


      SHistBin* pPrevEntry = (SHistBin*)pNode->pBackward[0]->pData;
      if (pPrevEntry) {
        pPrevEntry->delta = pEntry->val - pPrevEntry->val;
      }

      SLoserTreeInfo* pTree = (*pHisto)->pLoserTree;
      if (pNextEntry->index != -1) {
        (*pHisto)->maxIndex = pNextEntry->index;


        pTree->pNode[pNextEntry->index + pTree->numOfEntries].pData = pLast;
        ((SHistBin*)pLast->pData)->index = pNextEntry->index;
        int32_t f = pTree->pNode[pNextEntry->index + pTree->numOfEntries].index;
        printf("disappear index is:%d\n", f);
      }

      tLoserTreeAdjust(pTree, pEntry->index + pTree->numOfEntries);

      tSkipListRemoveNode((*pHisto)->pList, pNext);
      tSkipListPrint((*pHisto)->pList, 1);

      tLoserTreeDisplay((*pHisto)->pLoserTree);
    } else {
      if (pResNode->pForward[0] != ((void*)0)) {
        pEntry1->delta = ((SHistBin*)pResNode->pForward[0]->pData)->val - val;
      } else {
        pEntry1->delta = DBL_MAX;
      }

      if (pResNode->pBackward[0] != &(*pHisto)->pList->pHead) {
        SHistBin* pPrevEntry = (SHistBin*)pResNode->pBackward[0]->pData;
        pEntry1->delta = val - pPrevEntry->val;
      }

      printf("delta is:%9lf\n", pEntry1->delta);
    }

  } else {
    SHistBin* pEntry = (SHistBin*)pResNode->pData;
    assert(pEntry->val == val);
    pEntry->num += 1;
  }


  if (val > (*pHisto)->max) {
    (*pHisto)->max = val;
  }

  if (val < (*pHisto)->min) {
    (*pHisto)->min = val;
  }

  (*pHisto)->numOfElems += 1;
  return 0;
}
