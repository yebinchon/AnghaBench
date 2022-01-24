#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ maxSessions; struct TYPE_4__* ipHashList; scalar_t__ ipHashMemPool; } ;
typedef  TYPE_1__ SHashObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(void *handle) {
  SHashObj *pObj;

  pObj = (SHashObj *)handle;
  if (pObj == NULL || pObj->maxSessions == 0) return;

  if (pObj->ipHashMemPool) FUNC2(pObj->ipHashMemPool);

  if (pObj->ipHashList) FUNC0(pObj->ipHashList);

  FUNC1(pObj, 0, sizeof(SHashObj));
  FUNC0(pObj);
}