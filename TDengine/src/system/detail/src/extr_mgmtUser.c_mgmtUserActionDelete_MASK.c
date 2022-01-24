#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  acct; } ;
typedef  TYPE_1__ SUserObj ;
typedef  int /*<<< orphan*/  SAcctObj ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void *FUNC2(void *row, char *str, int size, int *ssize) {
  SUserObj *pUser = (SUserObj *)row;
  SAcctObj *pAcct = FUNC0(pUser->acct);
  FUNC1(pAcct, pUser);

  return NULL;
}