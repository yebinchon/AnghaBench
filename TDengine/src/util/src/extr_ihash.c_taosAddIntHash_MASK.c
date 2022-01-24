#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t int32_t ;
struct TYPE_5__ {scalar_t__ data; struct TYPE_5__* prev; struct TYPE_5__* next; int /*<<< orphan*/  key; } ;
struct TYPE_4__ {scalar_t__ maxSessions; size_t (* hashFp ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mutex; TYPE_2__** hashList; scalar_t__ dataSize; } ;
typedef  TYPE_1__ IHashObj ;
typedef  TYPE_2__ IHashNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

char *FUNC5(void *handle, uint64_t key, char *pData) {
  int32_t    hash;
  IHashNode *pNode;
  IHashObj * pObj;

  pObj = (IHashObj *)handle;
  if (pObj == NULL || pObj->maxSessions == 0) return NULL;

  hash = (*pObj->hashFp)(pObj, key);

  pNode = (IHashNode *)FUNC0(sizeof(IHashNode) + (size_t)pObj->dataSize);
  if (pNode == NULL)
    return NULL;
  
  FUNC2(&pObj->mutex);

  pNode->key = key;
  if (pData != NULL) {
    FUNC1(pNode->data, pData, (size_t)pObj->dataSize);
  }
  pNode->prev = 0;
  pNode->next = pObj->hashList[hash];

  if (pObj->hashList[hash] != 0) (pObj->hashList[hash])->prev = pNode;
  pObj->hashList[hash] = pNode;

  FUNC3(&pObj->mutex);

  return (char *)pNode->data;
}