
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
struct TYPE_7__ {scalar_t__ nType; char* pz; size_t nLen; scalar_t__* wpz; } ;
struct TYPE_6__ {int nLevel; TYPE_2__ key; struct TYPE_6__** pBackward; void* pData; struct TYPE_6__** pForward; } ;
typedef TYPE_1__ tSkipListNode ;
typedef TYPE_2__ tSkipListKey ;
typedef int int32_t ;


 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 scalar_t__ calloc (int,size_t) ;
 size_t getOneNodeSize (TYPE_2__ const*,int) ;
 int strcpy (char*,char*) ;
 int wcsncpy (scalar_t__*,scalar_t__*,size_t) ;

__attribute__((used)) static tSkipListNode *tSkipListCreateNode(void *pData, const tSkipListKey *pKey, int32_t nLevel) {
  size_t nodeSize = getOneNodeSize(pKey, nLevel);
  tSkipListNode *pNode = (tSkipListNode *)calloc(1, nodeSize);

  pNode->pForward = (tSkipListNode **)(&pNode[1]);
  pNode->pBackward = (pNode->pForward + nLevel);

  pNode->pData = pData;

  pNode->key = *pKey;
  if (pKey->nType == TSDB_DATA_TYPE_BINARY) {
    pNode->key.pz = (char *)(pNode->pBackward + nLevel);

    strcpy(pNode->key.pz, pKey->pz);
    pNode->key.pz[pKey->nLen] = 0;
  } else if (pKey->nType == TSDB_DATA_TYPE_NCHAR) {
    pNode->key.wpz = (wchar_t *)(pNode->pBackward + nLevel);
    wcsncpy(pNode->key.wpz, pKey->wpz, pKey->nLen);
    pNode->key.wpz[pKey->nLen] = 0;
  }

  pNode->nLevel = nLevel;
  return pNode;
}
