
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int numOfElems; scalar_t__ data; } ;
typedef TYPE_3__ tFilePage ;
struct TYPE_11__ {int maxCapacity; size_t numOfCols; TYPE_1__* pFields; scalar_t__* colOffset; } ;
typedef TYPE_4__ tColModel ;
typedef size_t int32_t ;
struct TYPE_12__ {int hasPrevRow; scalar_t__ prevRowOfInput; TYPE_2__* pDesc; } ;
struct TYPE_9__ {TYPE_4__* pSchema; } ;
struct TYPE_8__ {int bytes; } ;
typedef TYPE_5__ SLocalReducer ;


 int assert (int) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void savePreviousRow(SLocalReducer *pLocalReducer, tFilePage *tmpBuffer) {
  tColModel *pColModel = pLocalReducer->pDesc->pSchema;
  assert(pColModel->maxCapacity == 1 && tmpBuffer->numOfElems == 1);


  for (int32_t i = 0; i < pLocalReducer->pDesc->pSchema->numOfCols; ++i) {
    memcpy(pLocalReducer->prevRowOfInput + pColModel->colOffset[i], tmpBuffer->data + pColModel->colOffset[i],
           pColModel->pFields[i].bytes);
  }

  tmpBuffer->numOfElems = 0;
  pLocalReducer->hasPrevRow = 1;
}
