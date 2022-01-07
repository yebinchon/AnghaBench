
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ numOfElems; char* data; } ;
typedef TYPE_2__ tFilePage ;
struct TYPE_9__ {scalar_t__ maxCapacity; scalar_t__ numOfCols; TYPE_1__* pFields; } ;
typedef TYPE_3__ tColModel ;
typedef scalar_t__ int32_t ;
struct TYPE_7__ {scalar_t__ bytes; } ;


 char* COLMODEL_GET_VAL (char*,TYPE_3__*,scalar_t__,scalar_t__,scalar_t__) ;
 int assert (int) ;
 int memmove (char*,char*,scalar_t__) ;

void tColModelAppend(tColModel *dstModel, tFilePage *dstPage, void *srcData, int32_t start, int32_t numOfRows,
                     int32_t srcCapacity) {
  assert(dstPage->numOfElems + numOfRows <= dstModel->maxCapacity);

  for (int32_t col = 0; col < dstModel->numOfCols; ++col) {
    char *dst = COLMODEL_GET_VAL(dstPage->data, dstModel, dstModel->maxCapacity, dstPage->numOfElems, col);
    char *src = COLMODEL_GET_VAL((char *)srcData, dstModel, srcCapacity, start, col);

    memmove(dst, src, dstModel->pFields[col].bytes * numOfRows);
  }

  dstPage->numOfElems += numOfRows;
}
