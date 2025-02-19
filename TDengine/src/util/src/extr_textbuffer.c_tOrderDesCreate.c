
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numOfOrderedCols; int* pData; } ;
struct TYPE_5__ {int tsOrder; TYPE_1__ orderIdx; int * pSchema; } ;
typedef TYPE_2__ tOrderDescriptor ;
typedef int tColModel ;
typedef int int32_t ;


 scalar_t__ malloc (int) ;

tOrderDescriptor *tOrderDesCreate(int32_t *orderColIdx, int32_t numOfOrderCols, tColModel *pModel,
                                  int32_t tsOrderType) {
  tOrderDescriptor *desc = (tOrderDescriptor *)malloc(sizeof(tOrderDescriptor) + sizeof(int32_t) * numOfOrderCols);
  if (desc == ((void*)0)) {
    return ((void*)0);
  }

  desc->pSchema = pModel;
  desc->tsOrder = tsOrderType;

  desc->orderIdx.numOfOrderedCols = numOfOrderCols;
  for (int32_t i = 0; i < numOfOrderCols; ++i) {
    desc->orderIdx.pData[i] = orderColIdx[i];
  }

  return desc;
}
