
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_5__ {int usedIndex; int hashList; int * pResult; } ;
typedef TYPE_1__ SQueryRuntimeEnv ;
typedef int SOutputRes ;


 int GET_INT16_VAL (char*) ;
 int GET_INT32_VAL (char*) ;
 int GET_INT64_VAL (char*) ;
 int GET_INT8_VAL (char*) ;
 int TSDB_CODE_SUCCESS ;




 int initCtxOutputBuf (TYPE_1__*) ;
 scalar_t__ isNull (char*,int) ;
 int setGroupOutputBuffer (TYPE_1__*,int *) ;
 scalar_t__ taosAddIntHash (int ,int ,char*) ;
 scalar_t__ taosGetIntHashData (int ,int ) ;

__attribute__((used)) static int32_t setGroupResultForKey(SQueryRuntimeEnv *pRuntimeEnv, char *pData, int16_t type, char *columnData) {
  SOutputRes *pOutputRes = ((void*)0);


  if (isNull(pData, type)) {
    return -1;
  }

  int64_t t = 0;
  switch (type) {
    case 128:
      t = GET_INT8_VAL(pData);
      break;
    case 131:
      t = GET_INT64_VAL(pData);
      break;
    case 129:
      t = GET_INT16_VAL(pData);
      break;
    case 130:
    default:
      t = GET_INT32_VAL(pData);
      break;
  }

  SOutputRes **p1 = (SOutputRes **)taosGetIntHashData(pRuntimeEnv->hashList, t);
  if (p1 != ((void*)0)) {
    pOutputRes = *p1;
  } else {

    if (pRuntimeEnv->usedIndex >= 10000) {
      return -1;
    }


    char *b = (char *)&pRuntimeEnv->pResult[pRuntimeEnv->usedIndex++];
    pOutputRes = *(SOutputRes **)taosAddIntHash(pRuntimeEnv->hashList, t, (char *)&b);
  }

  setGroupOutputBuffer(pRuntimeEnv, pOutputRes);
  initCtxOutputBuf(pRuntimeEnv);

  return TSDB_CODE_SUCCESS;
}
