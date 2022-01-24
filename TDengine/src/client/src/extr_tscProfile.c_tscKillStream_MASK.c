#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  param; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  pSql; struct TYPE_7__* next; int /*<<< orphan*/  streamId; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; TYPE_2__* streamList; } ;
typedef  TYPE_1__ STscObj ;
typedef  TYPE_2__ SSqlStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC5(STscObj *pObj, uint32_t killId) {
  FUNC0(&pObj->mutex);

  SSqlStream *pStream = pObj->streamList;
  while (pStream) {
    if (pStream->streamId == killId) break;
    pStream = pStream->next;
  }

  FUNC1(&pObj->mutex);

  FUNC4("%p stream:%p is killed, streamId:%d", pStream->pSql, pStream, killId);

  FUNC3(pStream);
  if (pStream->callback) {
    pStream->callback(pStream->param);
  }
}