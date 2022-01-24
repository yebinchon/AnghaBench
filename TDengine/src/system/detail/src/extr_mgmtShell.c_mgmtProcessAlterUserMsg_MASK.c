#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int flag; int privilege; int /*<<< orphan*/  user; int /*<<< orphan*/  pass; } ;
struct TYPE_13__ {int /*<<< orphan*/  thandle; TYPE_2__* pUser; scalar_t__ superAuth; TYPE_1__* pAcct; } ;
struct TYPE_12__ {char* user; char* acct; int superAuth; int writeAuth; int /*<<< orphan*/  pass; } ;
struct TYPE_11__ {char* user; } ;
struct TYPE_10__ {char* user; } ;
typedef  TYPE_3__ SUserObj ;
typedef  TYPE_4__ SConnObj ;
typedef  TYPE_5__ SAlterUserMsg ;

/* Variables and functions */
 int TSDB_ALTER_USER_PASSWD ; 
 int TSDB_ALTER_USER_PRIVILEGES ; 
 int TSDB_CODE_INVALID_USER ; 
 int TSDB_CODE_NO_RIGHTS ; 
 int /*<<< orphan*/  TSDB_MSG_TYPE_ALTER_USER_RSP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC9(char *pMsg, int msgLen, SConnObj *pConn) {
  SAlterUserMsg *pAlter = (SAlterUserMsg *)pMsg;
  int            code = 0;
  SUserObj *     pUser;

  if (FUNC2(pConn, TSDB_MSG_TYPE_ALTER_USER_RSP) != 0) {
    return 0;
  }

  pUser = FUNC3(pAlter->user);
  if (pUser == NULL) {
    FUNC8(pConn->thandle, TSDB_MSG_TYPE_ALTER_USER_RSP, TSDB_CODE_INVALID_USER);
    return 0;
  }

  if (FUNC5(pUser->user, "monitor") == 0 || FUNC5(pUser->user, "stream") == 0) {
    code = TSDB_CODE_NO_RIGHTS;
  } else if ((FUNC5(pUser->user, pConn->pUser->user) == 0) ||
             ((FUNC5(pUser->acct, pConn->pAcct->user) == 0) && pConn->superAuth) ||
             (FUNC5(pConn->pUser->user, "root") == 0)) {
    if ((pAlter->flag & TSDB_ALTER_USER_PASSWD) != 0) {
      FUNC1(pUser->pass, 0, sizeof(pUser->pass));
      FUNC7(pAlter->pass, FUNC6(pAlter->pass), pUser->pass);
    }
    if ((pAlter->flag & TSDB_ALTER_USER_PRIVILEGES) != 0) {
      if (pAlter->privilege == 1) {  // super
        pUser->superAuth = 1;
        pUser->writeAuth = 1;
      }
      if (pAlter->privilege == 2) {  // read
        pUser->superAuth = 0;
        pUser->writeAuth = 0;
      }
      if (pAlter->privilege == 3) {  // write
        pUser->superAuth = 0;
        pUser->writeAuth = 1;
      }
    }

    code = FUNC4(pUser);
    FUNC0("user:%s is altered by %s", pAlter->user, pConn->pUser->user);
  } else {
    code = TSDB_CODE_NO_RIGHTS;
  }

  FUNC8(pConn->thandle, TSDB_MSG_TYPE_ALTER_USER_RSP, code);

  return 0;
}