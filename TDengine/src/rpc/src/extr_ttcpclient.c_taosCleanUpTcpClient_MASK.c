#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  pollFd; TYPE_3__* pHead; } ;
typedef  TYPE_1__ STcpClient ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(void *chandle) {
  STcpClient *pTcp = (STcpClient *)chandle;
  if (pTcp == NULL) return;

  while (pTcp->pHead) {
    FUNC3(pTcp->pHead);
    pTcp->pHead = pTcp->pHead->next;
  }

  FUNC0(pTcp->pollFd);

  FUNC1(pTcp->thread);
  FUNC2(pTcp->thread, NULL);

  // tTrace (":%s, all connections are cleaned up", pTcp->label);

  FUNC4(pTcp);
}