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
struct TYPE_5__ {scalar_t__ maxSessions; int (* hashFp ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mutex; TYPE_1__** longHashList; int /*<<< orphan*/  longHashMemPool; } ;
struct TYPE_4__ {unsigned int id; struct TYPE_4__* prev; struct TYPE_4__* next; int /*<<< orphan*/  cont; } ;
typedef  TYPE_1__ SLongHash ;
typedef  TYPE_2__ SHashObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(void *handle, uint64_t cont, unsigned int id) {
  int        hash;
  SLongHash *pNode;
  SHashObj * pObj;

  pObj = (SHashObj *)handle;
  if (pObj == NULL || pObj->maxSessions == 0) return -1;

  FUNC0(&pObj->mutex);

  hash = (*pObj->hashFp)(pObj, cont);

  pNode = (SLongHash *)FUNC3(pObj->longHashMemPool);
  pNode->cont = cont;
  pNode->id = id;
  pNode->prev = 0;
  pNode->next = pObj->longHashList[hash];

  if (pObj->longHashList[hash] != 0) (pObj->longHashList[hash])->prev = pNode;
  pObj->longHashList[hash] = pNode;

  FUNC1(&pObj->mutex);

  return 0;
}