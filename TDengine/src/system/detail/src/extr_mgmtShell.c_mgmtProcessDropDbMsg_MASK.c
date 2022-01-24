#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  thandle; TYPE_1__* pUser; int /*<<< orphan*/  pAcct; int /*<<< orphan*/  writeAuth; } ;
struct TYPE_7__ {int /*<<< orphan*/  db; } ;
struct TYPE_6__ {int /*<<< orphan*/  user; } ;
typedef  TYPE_2__ SDropDbMsg ;
typedef  TYPE_3__ SConnObj ;

/* Variables and functions */
 int TSDB_CODE_NO_RIGHTS ; 
 int /*<<< orphan*/  TSDB_MSG_TYPE_DROP_DB_RSP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(char *pMsg, int msgLen, SConnObj *pConn) {
  SDropDbMsg *pDrop = (SDropDbMsg *)pMsg;
  int         code;

  if (FUNC1(pConn, TSDB_MSG_TYPE_DROP_DB_RSP) != 0) {
    return 0;
  }

  if (!pConn->writeAuth) {
    code = TSDB_CODE_NO_RIGHTS;
  } else {
    code = FUNC2(pConn->pAcct, pDrop->db);
    if (code == 0) {
      FUNC0("DB:%s is dropped by %s", pDrop->db, pConn->pUser->user);
    }
  }
  FUNC3(pConn->thandle, TSDB_MSG_TYPE_DROP_DB_RSP, code);

  return 0;
}