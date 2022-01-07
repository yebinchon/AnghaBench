
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_7__ {int num; double val; } ;
struct TYPE_6__ {int numOfEntries; int maxEntries; TYPE_2__* elems; } ;
typedef TYPE_1__ SHistogramInfo ;
typedef int SHistBin ;


 int assert (int) ;
 int histogramMergeImpl (TYPE_2__*,int*) ;
 int memmove (TYPE_2__*,TYPE_2__*,int) ;

int32_t histogramCreateBin(SHistogramInfo* pHisto, int32_t index, double val) {
  assert(pHisto->numOfEntries <= pHisto->maxEntries);
  return 0;
}
