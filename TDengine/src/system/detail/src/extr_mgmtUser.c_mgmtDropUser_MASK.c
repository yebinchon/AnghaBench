#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  user; } ;
struct TYPE_5__ {int /*<<< orphan*/  acct; } ;
typedef  TYPE_1__ SUserObj ;
typedef  TYPE_2__ SAcctObj ;

/* Variables and functions */
 int TSDB_CODE_INVALID_USER ; 
 int TSDB_CODE_NO_RIGHTS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  userSdb ; 

int FUNC4(SAcctObj *pAcct, char *name) {
  SUserObj *pUser;

  pUser = (SUserObj *)FUNC2(userSdb, name);
  if (pUser == NULL) {
    FUNC0("user:%s is not there", name);
    return TSDB_CODE_INVALID_USER;
  }

  if (FUNC3(pAcct->user, pUser->acct) != 0) return TSDB_CODE_NO_RIGHTS;

  //  mgmtRemoveUserFromAcct(pAcct, pUser);
  FUNC1(userSdb, pUser);

  return 0;
}