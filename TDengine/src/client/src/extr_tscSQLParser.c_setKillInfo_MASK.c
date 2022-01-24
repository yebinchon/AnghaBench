#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct SSqlInfo {int sqlType; TYPE_1__* pDCLInfo; } ;
typedef  int int32_t ;
struct TYPE_10__ {scalar_t__ n; int /*<<< orphan*/ * z; } ;
struct TYPE_9__ {int /*<<< orphan*/  payload; int /*<<< orphan*/  command; } ;
struct TYPE_8__ {TYPE_3__ cmd; } ;
struct TYPE_7__ {TYPE_4__* a; } ;
typedef  TYPE_2__ SSqlObj ;
typedef  TYPE_3__ SSqlCmd ;
typedef  TYPE_4__ SSQLToken ;

/* Variables and functions */
#define  KILL_CONNECTION 130 
#define  KILL_QUERY 129 
#define  KILL_STREAM 128 
 int TSDB_CODE_INVALID_SQL ; 
 int TSDB_CODE_SUCCESS ; 
 scalar_t__ TSDB_KILL_MSG_LEN ; 
 int /*<<< orphan*/  TSDB_SQL_KILL_CONNECTION ; 
 int /*<<< orphan*/  TSDB_SQL_KILL_QUERY ; 
 int /*<<< orphan*/  TSDB_SQL_KILL_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int32_t FUNC7(SSqlObj* pSql, struct SSqlInfo* pInfo) {
  SSqlCmd* pCmd = &pSql->cmd;

  switch (pInfo->sqlType) {
    case KILL_QUERY:
      pCmd->command = TSDB_SQL_KILL_QUERY;
      break;
    case KILL_STREAM:
      pCmd->command = TSDB_SQL_KILL_STREAM;
      break;
    case KILL_CONNECTION:
      pCmd->command = TSDB_SQL_KILL_CONNECTION;
      break;
    default:
      return TSDB_CODE_INVALID_SQL;
  }

  SSQLToken* pToken = &(pInfo->pDCLInfo->a[0]);
  if (pToken->n > TSDB_KILL_MSG_LEN) {
    return TSDB_CODE_INVALID_SQL;
  }

  FUNC2(pCmd->payload, pToken->z, pToken->n);

  const char delim = ':';
  char*      ipStr = FUNC3(pToken->z, &delim);
  char*      portStr = FUNC3(NULL, &delim);

  if (!FUNC6(ipStr)) {
    FUNC0(pCmd->payload, 0, FUNC5(pCmd->payload));

    const char* msg = "invalid ip address";
    FUNC1(pCmd, msg);
    return TSDB_CODE_INVALID_SQL;
  }

  int32_t port = FUNC4(portStr, NULL, 10);
  if (port <= 0 || port > 65535) {
    FUNC0(pCmd->payload, 0, FUNC5(pCmd->payload));

    const char* msg = "invalid port";
    FUNC1(pCmd, msg);
    return TSDB_CODE_INVALID_SQL;
  }

  return TSDB_CODE_SUCCESS;
}