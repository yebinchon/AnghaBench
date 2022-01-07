
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_8__ {int pLoserTree; int pList; int maxEntries; } ;
struct TYPE_7__ {int pTree; int pSkipList; int numOfEntries; } ;
typedef TYPE_1__ SInsertSupporter ;
typedef TYPE_2__ SHistogramInfo ;
typedef int SHistBin ;


 int MAX_SKIP_LIST_LEVEL ;
 int TSDB_DATA_TYPE_DOUBLE ;
 int compare ;
 void* malloc (int) ;
 TYPE_2__* tHistogramCreateFrom (TYPE_2__*,int ) ;
 int tLoserTreeCreate1 (int *,int ,TYPE_1__*,int ) ;
 int tSkipListCreate (int ,int ,int) ;

SHistogramInfo* tHistogramCreate(int32_t numOfEntries) {

  SHistogramInfo* pHisto = malloc(sizeof(SHistogramInfo) + sizeof(SHistBin) * (numOfEntries + 1));


  pHisto->pList = tSkipListCreate(MAX_SKIP_LIST_LEVEL, TSDB_DATA_TYPE_DOUBLE, sizeof(double));
  SInsertSupporter* pss = malloc(sizeof(SInsertSupporter));
  pss->numOfEntries = pHisto->maxEntries;
  pss->pSkipList = pHisto->pList;

  int32_t ret = tLoserTreeCreate1(&pHisto->pLoserTree, numOfEntries, pss, compare);
  pss->pTree = pHisto->pLoserTree;


  return tHistogramCreateFrom(pHisto, numOfEntries);
}
