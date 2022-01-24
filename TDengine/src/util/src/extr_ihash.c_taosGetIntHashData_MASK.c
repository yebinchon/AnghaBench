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
struct TYPE_5__ {char* data; struct TYPE_5__* next; int /*<<< orphan*/  key; } ;
struct TYPE_4__ {scalar_t__ maxSessions; size_t (* hashFp ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mutex; TYPE_2__** hashList; } ;
typedef  TYPE_1__ IHashObj ;
typedef  TYPE_2__ IHashNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

char *FUNC3(void *handle, uint64_t key) {
  int32_t    hash;
  IHashNode *pNode;
  IHashObj * pObj;

  pObj = (IHashObj *)handle;
  if (pObj == NULL || pObj->maxSessions == 0) return NULL;

  hash = (*pObj->hashFp)(pObj, key);

  FUNC0(&pObj->mutex);

  pNode = pObj->hashList[hash];

  while (pNode) {
    if (pNode->key == key) {
      break;
    }

    pNode = pNode->next;
  }

  FUNC1(&pObj->mutex);

  if (pNode) return pNode->data;

  return NULL;
}