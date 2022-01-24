#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_12__ {scalar_t__ command; int /*<<< orphan*/  payload; } ;
struct TYPE_10__ {scalar_t__ code; int qhandle; scalar_t__ numOfRows; } ;
struct TYPE_11__ {int /*<<< orphan*/  param; int /*<<< orphan*/  (* fp ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ;TYPE_1__ res; TYPE_3__ cmd; } ;
typedef  TYPE_2__ SSqlObj ;
typedef  TYPE_3__ SSqlCmd ;

/* Variables and functions */
 scalar_t__ TSDB_CODE_INVALID_SQL ; 
 scalar_t__ TSDB_SQL_CFG_LOCAL ; 
 scalar_t__ TSDB_SQL_DESCRIBE_TABLE ; 
 scalar_t__ TSDB_SQL_RESET_CACHE ; 
 scalar_t__ TSDB_SQL_RETRIEVE_EMPTY_RESULT ; 
 scalar_t__ TSDB_SQL_RETRIEVE_TAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tscCacheHandle ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

int FUNC7(SSqlObj *pSql) {
  SSqlCmd *pCmd = &pSql->cmd;

  if (pCmd->command == TSDB_SQL_CFG_LOCAL) {
    pSql->res.code = (uint8_t)FUNC2(pCmd->payload);
  } else if (pCmd->command == TSDB_SQL_DESCRIBE_TABLE) {
    pSql->res.code = (uint8_t)FUNC4(pSql);
  } else if (pCmd->command == TSDB_SQL_RETRIEVE_TAGS) {
    pSql->res.code = (uint8_t)FUNC5(pSql);
  } else if (pCmd->command == TSDB_SQL_RETRIEVE_EMPTY_RESULT) {
    /*
     * pass the qhandle check, in order to call partial release function to
     * free allocated resources and remove the SqlObj from linked list
     */
    pSql->res.qhandle = 0x1;  // pass the qhandle check
    pSql->res.numOfRows = 0;
  } else if (pCmd->command == TSDB_SQL_RESET_CACHE) {
    FUNC1(tscCacheHandle);
  } else {
    pSql->res.code = TSDB_CODE_INVALID_SQL;
    FUNC3("%p not support command:%d", pSql, pCmd->command);
  }

  // keep the code in local variable in order to avoid invalid read in case of async query
  int32_t code = pSql->res.code;

  if (pSql->fp != NULL) {  // callback function
    if (code == 0) {
      (*pSql->fp)(pSql->param, pSql, 0);
    } else {
      FUNC6(pSql);
    }
  }

  return code;
}