#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wchar_t ;
struct TYPE_7__ {scalar_t__ nType; char* pz; size_t nLen; scalar_t__* wpz; } ;
struct TYPE_6__ {int nLevel; TYPE_2__ key; struct TYPE_6__** pBackward; void* pData; struct TYPE_6__** pForward; } ;
typedef  TYPE_1__ tSkipListNode ;
typedef  TYPE_2__ tSkipListKey ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ TSDB_DATA_TYPE_BINARY ; 
 scalar_t__ TSDB_DATA_TYPE_NCHAR ; 
 scalar_t__ FUNC0 (int,size_t) ; 
 size_t FUNC1 (TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,size_t) ; 

__attribute__((used)) static tSkipListNode *FUNC4(void *pData, const tSkipListKey *pKey, int32_t nLevel) {
  size_t         nodeSize = FUNC1(pKey, nLevel);
  tSkipListNode *pNode = (tSkipListNode *)FUNC0(1, nodeSize);

  pNode->pForward = (tSkipListNode **)(&pNode[1]);
  pNode->pBackward = (pNode->pForward + nLevel);

  pNode->pData = pData;

  pNode->key = *pKey;
  if (pKey->nType == TSDB_DATA_TYPE_BINARY) {
    pNode->key.pz = (char *)(pNode->pBackward + nLevel);

    FUNC2(pNode->key.pz, pKey->pz);
    pNode->key.pz[pKey->nLen] = 0;
  } else if (pKey->nType == TSDB_DATA_TYPE_NCHAR) {
    pNode->key.wpz = (wchar_t *)(pNode->pBackward + nLevel);
    FUNC3(pNode->key.wpz, pKey->wpz, pKey->nLen);
    pNode->key.wpz[pKey->nLen] = 0;
  }

  pNode->nLevel = nLevel;
  return pNode;
}