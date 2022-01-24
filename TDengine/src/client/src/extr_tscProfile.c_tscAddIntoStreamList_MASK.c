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
typedef  int uint32_t ;
struct TYPE_7__ {int listed; scalar_t__ streamId; struct TYPE_7__* prev; struct TYPE_7__* next; TYPE_1__* pSql; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; TYPE_3__* streamList; } ;
struct TYPE_5__ {TYPE_2__* pTscObj; } ;
typedef  TYPE_2__ STscObj ;
typedef  TYPE_3__ SSqlStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(SSqlStream *pStream) {
  static uint32_t streamId = 1;
  STscObj *       pObj = pStream->pSql->pTscObj;

  FUNC0(&pObj->mutex);

  pStream->next = pObj->streamList;
  if (pObj->streamList) pObj->streamList->prev = pStream;
  pObj->streamList = pStream;
  pStream->streamId = streamId++;

  FUNC1(&pObj->mutex);

  pStream->listed = 1;
}