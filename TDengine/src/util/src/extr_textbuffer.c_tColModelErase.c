
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ numOfElems; char* data; } ;
typedef TYPE_2__ tFilePage ;
struct TYPE_8__ {scalar_t__ numOfCols; scalar_t__* colOffset; TYPE_1__* pFields; } ;
typedef TYPE_3__ tColModel ;
typedef scalar_t__ int32_t ;
struct TYPE_6__ {scalar_t__ bytes; } ;


 int memmove (char*,char*,scalar_t__) ;

void tColModelErase(tColModel *pModel, tFilePage *inputBuffer, int32_t maxCapacity, int32_t s, int32_t e) {
  if (inputBuffer->numOfElems == 0 || (e - s + 1) <= 0) {
    return;
  }

  int32_t removed = e - s + 1;
  int32_t remain = inputBuffer->numOfElems - removed;
  int32_t secPart = inputBuffer->numOfElems - e - 1;


  for (int32_t i = 0; i < pModel->numOfCols; ++i) {
    char *startPos = inputBuffer->data + pModel->colOffset[i] * maxCapacity + s * pModel->pFields[i].bytes;
    char *endPos = startPos + pModel->pFields[i].bytes * removed;

    memmove(startPos, endPos, pModel->pFields[i].bytes * secPart);
  }

  inputBuffer->numOfElems = remain;
}
