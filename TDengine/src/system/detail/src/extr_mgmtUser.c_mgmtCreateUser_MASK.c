#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {char* user; } ;
struct TYPE_9__ {char* user; char* acct; int superAuth; int writeAuth; int /*<<< orphan*/  createdTime; int /*<<< orphan*/  pass; } ;
typedef  TYPE_1__ SUserObj ;
typedef  TYPE_2__ SAcctObj ;

/* Variables and functions */
 int TSDB_CODE_SDB_ERROR ; 
 int TSDB_CODE_SUCCESS ; 
 int TSDB_CODE_USER_ALREADY_EXIST ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  userSdb ; 

int FUNC13(SAcctObj *pAcct, char *name, char *pass) {
  SUserObj *pUser;
  int code;

  code = FUNC4(pAcct);
  if (code != 0) {
    return code;
  }

  pUser = (SUserObj *)FUNC5(userSdb, name);
  if (pUser != NULL) {
    FUNC0("user:%s is already there", name);
    return TSDB_CODE_USER_ALREADY_EXIST;
  }

  code = FUNC3();
  if (code != 0) {
    return code;
  }

  pUser = FUNC1(sizeof(SUserObj));
  FUNC2(pUser, 0, sizeof(SUserObj));
  FUNC8(pUser->user, name);
  FUNC10((uint8_t*) pass, FUNC9(pass), pUser->pass);
  FUNC8(pUser->acct, pAcct->user);
  pUser->createdTime = FUNC11();
  pUser->superAuth = 0;
  pUser->writeAuth = 1;
  if (FUNC7(pUser->user, "root") == 0 || FUNC7(pUser->user, pUser->acct) == 0) {
    pUser->superAuth = 1;
  }

  code = TSDB_CODE_SUCCESS;
  if (FUNC6(userSdb, pUser, 0) < 0) {
    FUNC12(pUser);
    code = TSDB_CODE_SDB_ERROR;
  }

  //  mgmtAddUserIntoAcct(pAcct, pUser);

  return code;
}