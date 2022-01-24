#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* data; int hash; struct TYPE_6__* prev; struct TYPE_6__* next; int /*<<< orphan*/  string; } ;
struct TYPE_5__ {scalar_t__ maxSessions; int dataSize; TYPE_2__** hashList; } ;
typedef  TYPE_1__ SHashObj ;
typedef  TYPE_2__ SHashNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void *FUNC5(void *handle, void *key, void *pData) {
  int        hash;
  SHashNode *pNode;
  SHashObj * pObj;
  char *     string = (char *)key;

  pObj = (SHashObj *)handle;
  if (pObj == NULL || pObj->maxSessions == 0) return NULL;

  hash = FUNC3(pObj, string);

  int size = sizeof(SHashNode) + pObj->dataSize;
  pNode = (SHashNode *)FUNC0(size);
  FUNC2(pNode, 0, size);
  FUNC4(pNode->string, string);
  FUNC1(pNode->data, pData, pObj->dataSize);
  pNode->prev = 0;
  pNode->next = pObj->hashList[hash];
  pNode->hash = hash;

  if (pObj->hashList[hash] != 0) (pObj->hashList[hash])->prev = pNode;
  pObj->hashList[hash] = pNode;

  return pNode->data;
}