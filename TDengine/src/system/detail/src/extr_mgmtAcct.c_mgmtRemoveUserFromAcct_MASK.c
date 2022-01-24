#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  numOfUsers; } ;
struct TYPE_12__ {int /*<<< orphan*/  mutex; TYPE_1__ acctInfo; TYPE_3__* pUser; } ;
struct TYPE_11__ {TYPE_3__* next; TYPE_2__* prev; } ;
struct TYPE_10__ {TYPE_2__* prev; } ;
struct TYPE_9__ {TYPE_3__* next; } ;
typedef  TYPE_4__ SUserObj ;
typedef  TYPE_5__ SAcctObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(SAcctObj *pAcct, SUserObj *pUser) {
  FUNC0(&pAcct->mutex);
  if (pUser->prev) pUser->prev->next = pUser->next;

  if (pUser->next) pUser->next->prev = pUser->prev;

  if (pUser->prev == NULL) pAcct->pUser = pUser->next;

  pAcct->acctInfo.numOfUsers--;
  FUNC1(&pAcct->mutex);

  return 0;
}