
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int numOfElems; int data; } ;
typedef TYPE_1__ tFilePage ;
typedef int int32_t ;
struct TYPE_10__ {TYPE_1__* pResultBuf; } ;
struct TYPE_8__ {int qhandle; TYPE_4__* pLocalReducer; int data; scalar_t__ rspType; scalar_t__ row; scalar_t__ numOfRows; } ;
struct TYPE_9__ {TYPE_2__ res; } ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ SLocalReducer ;


 scalar_t__ calloc (int,size_t) ;
 int tscDestroyLocalReducer (TYPE_3__*) ;

void tscInitResObjForLocalQuery(SSqlObj *pObj, int32_t numOfRes, int32_t rowLen) {
  SSqlRes *pRes = &pObj->res;
  if (pRes->pLocalReducer != ((void*)0)) {
    tscDestroyLocalReducer(pObj);
  }

  pRes->qhandle = 1;
  pRes->numOfRows = 0;
  pRes->row = 0;

  pRes->rspType = 0;
  pRes->pLocalReducer = (SLocalReducer *)calloc(1, sizeof(SLocalReducer));





  size_t allocSize = numOfRes * rowLen + sizeof(tFilePage) + 1;
  pRes->pLocalReducer->pResultBuf = (tFilePage *)calloc(1, allocSize);

  pRes->pLocalReducer->pResultBuf->numOfElems = numOfRes;
  pRes->data = pRes->pLocalReducer->pResultBuf->data;
}
