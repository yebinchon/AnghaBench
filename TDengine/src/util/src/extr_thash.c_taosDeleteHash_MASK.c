#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {scalar_t__ maxSessions; int (* hashFp ) (TYPE_3__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  longHashMemPool; TYPE_2__** longHashList; } ;
struct TYPE_6__ {TYPE_1__* prev; struct TYPE_6__* next; int /*<<< orphan*/  cont; } ;
struct TYPE_5__ {TYPE_2__* next; } ;
typedef  TYPE_2__ SLongHash ;
typedef  TYPE_3__ SHashObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4(void *handle, uint64_t cont) {
  int        hash;
  SLongHash *pNode;
  SHashObj * pObj;

  pObj = (SHashObj *)handle;
  if (pObj == NULL || pObj->maxSessions == 0) return;

  hash = (*pObj->hashFp)(pObj, cont);

  FUNC0(&pObj->mutex);

  pNode = pObj->longHashList[hash];
  while (pNode) {
    if (pNode->cont == cont) break;

    pNode = pNode->next;
  }

  if (pNode) {
    if (pNode->prev) {
      pNode->prev->next = pNode->next;
    } else {
      pObj->longHashList[hash] = pNode->next;
    }

    if (pNode->next) {
      pNode->next->prev = pNode->prev;
    }

    FUNC3(pObj->longHashMemPool, (char *)pNode);
  }

  FUNC1(&pObj->mutex);
}