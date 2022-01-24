#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; struct TYPE_4__* next; } ;
struct TYPE_3__ {scalar_t__ maxSessions; int /*<<< orphan*/  mutex; TYPE_2__** hashList; } ;
typedef  TYPE_1__ SHashObj ;
typedef  TYPE_2__ SHashNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

char *FUNC2(void *handle, int (*fp)(char *)) {
  SHashObj * pObj;
  SHashNode *pNode, *pNext;
  char *     pData = NULL;

  pObj = (SHashObj *)handle;
  if (pObj == NULL || pObj->maxSessions <= 0) return NULL;

  FUNC0(&pObj->mutex);

  if (pObj->hashList) {
    for (int i = 0; i < pObj->maxSessions; ++i) {
      pNode = pObj->hashList[i];
      while (pNode) {
        pNext = pNode->next;
        int flag = fp(pNode->data);
        if (flag) {
          pData = pNode->data;
          goto VisitEnd;
        }

        pNode = pNext;
      }
    }
  }

VisitEnd:

  FUNC1(&pObj->mutex);
  return pData;
}