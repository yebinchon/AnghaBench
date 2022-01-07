
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int numOfOrderedCols; int * pData; } ;
struct TYPE_7__ {int numOfSids; int * starterPos; TYPE_1__ orderIdx; int pTagSchema; struct SMeterSidExtInfo** pSids; } ;
typedef TYPE_2__ tSidSet ;
struct SMeterSidExtInfo {int dummy; } ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_8__ {scalar_t__ flag; int colIdx; } ;
typedef int SSchema ;
typedef TYPE_3__ SColIndexEx ;


 scalar_t__ TSDB_COL_TAG ;
 scalar_t__ calloc (int,int) ;
 int tCreateTagSchema (int *,int) ;

tSidSet *tSidSetCreate(struct SMeterSidExtInfo **pMeterSidExtInfo, int32_t numOfMeters, SSchema *pSchema,
                       int32_t numOfTags, SColIndexEx *colList, int32_t numOfCols) {
  tSidSet *pSidSet = (tSidSet *)calloc(1, sizeof(tSidSet) + numOfCols * sizeof(int16_t));
  if (pSidSet == ((void*)0)) {
    return ((void*)0);
  }

  pSidSet->numOfSids = numOfMeters;
  pSidSet->pSids = pMeterSidExtInfo;
  pSidSet->pTagSchema = tCreateTagSchema(pSchema, numOfTags);
  pSidSet->orderIdx.numOfOrderedCols = numOfCols;




  int32_t numOfTagCols = 0;
  for(int32_t i = 0; i < numOfCols; ++i) {
    if (colList[i].flag == TSDB_COL_TAG) {
      pSidSet->orderIdx.pData[numOfTagCols++] = colList[i].colIdx;
    }
  }

  pSidSet->orderIdx.numOfOrderedCols = numOfTagCols;

  pSidSet->starterPos = ((void*)0);
  return pSidSet;
}
