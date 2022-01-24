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
struct TYPE_5__ {int /*<<< orphan*/  numOfConns; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; TYPE_1__ acctInfo; TYPE_2__* pConn; } ;
struct TYPE_6__ {struct TYPE_6__* prev; struct TYPE_6__* next; TYPE_3__* pAcct; } ;
typedef  TYPE_2__ SConnObj ;
typedef  TYPE_3__ SAcctObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(SConnObj *pConn) {
  SAcctObj *pAcct = pConn->pAcct;
  if (pAcct == NULL) return 0;

  FUNC1(&pAcct->mutex);

  FUNC0(pConn != pAcct->pConn);

  pConn->next = pAcct->pConn;
  pConn->prev = NULL;

  if (pAcct->pConn) pAcct->pConn->prev = pConn;

  pAcct->pConn = pConn;
  pAcct->acctInfo.numOfConns++;

  FUNC2(&pAcct->mutex);

  return 0;
}