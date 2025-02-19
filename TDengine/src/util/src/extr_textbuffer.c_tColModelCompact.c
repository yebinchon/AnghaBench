
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ numOfElems; scalar_t__ data; } ;
typedef TYPE_2__ tFilePage ;
struct TYPE_8__ {scalar_t__ numOfCols; int* colOffset; TYPE_1__* pFields; } ;
typedef TYPE_3__ tColModel ;
typedef scalar_t__ int32_t ;
struct TYPE_6__ {int bytes; } ;


 int memmove (scalar_t__,scalar_t__,int) ;

void tColModelCompact(tColModel *pModel, tFilePage *inputBuffer, int32_t maxElemsCapacity) {
  if (inputBuffer->numOfElems == 0 || maxElemsCapacity == inputBuffer->numOfElems) {
    return;
  }


  for (int32_t i = 1; i < pModel->numOfCols; ++i) {
    memmove(inputBuffer->data + pModel->colOffset[i] * inputBuffer->numOfElems,
            inputBuffer->data + pModel->colOffset[i] * maxElemsCapacity,
            pModel->pFields[i].bytes * inputBuffer->numOfElems);
  }
}
