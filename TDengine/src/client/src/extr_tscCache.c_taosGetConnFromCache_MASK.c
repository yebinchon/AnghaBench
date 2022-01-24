#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {scalar_t__ maxSessions; scalar_t__ keepTimer; int /*<<< orphan*/ * count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  total; int /*<<< orphan*/  connHashMemPool; TYPE_2__** connHashList; } ;
struct TYPE_9__ {scalar_t__ time; short port; void* data; TYPE_1__* prev; struct TYPE_9__* next; int /*<<< orphan*/  ip; } ;
struct TYPE_8__ {TYPE_2__* next; } ;
typedef  TYPE_2__ SConnHash ;
typedef  TYPE_3__ SConnCache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,short,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,void*,int /*<<< orphan*/ ,short,int,TYPE_2__*,int /*<<< orphan*/ ) ; 

void *FUNC7(void *handle, uint32_t ip, short port, char *user) {
  int         hash;
  SConnHash * pNode;
  SConnCache *pObj;
  void *      pData = NULL;

  pObj = (SConnCache *)handle;
  if (pObj == NULL || pObj->maxSessions == 0) return NULL;

  uint64_t time = FUNC2();

  hash = FUNC3(pObj, ip, port, user);
  FUNC0(&pObj->mutex);

  pNode = pObj->connHashList[hash];
  while (pNode) {
    if (time >= pObj->keepTimer + pNode->time) {
      FUNC5(pObj, pNode, hash, time);
      pNode = NULL;
      break;
    }

    if (pNode->ip == ip && pNode->port == port) break;

    pNode = pNode->next;
  }

  if (pNode) {
    FUNC5(pObj, pNode->next, hash, time);

    if (pNode->prev) {
      pNode->prev->next = pNode->next;
    } else {
      pObj->connHashList[hash] = pNode->next;
    }

    if (pNode->next) {
      pNode->next->prev = pNode->prev;
    }

    pData = pNode->data;
    FUNC4(pObj->connHashMemPool, (char *)pNode);
    pObj->total--;
    pObj->count[hash]--;
  }

  FUNC1(&pObj->mutex);

  if (pData) {
    FUNC6("%p ip:0x%x:%d:%d:%p retrieved, connections in cache:%d", pData, ip, port, hash, pNode, pObj->count[hash]);
  }

  return pData;
}