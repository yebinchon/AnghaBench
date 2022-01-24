#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ const int32_t ;
struct TYPE_10__ {int code; scalar_t__ qhandle; scalar_t__ numOfTotal; } ;
struct TYPE_11__ {int /*<<< orphan*/ * thandle; int /*<<< orphan*/ * fp; TYPE_2__ res; } ;
struct TYPE_9__ {TYPE_3__* pSql; struct TYPE_9__* signature; } ;
typedef  int /*<<< orphan*/  TAOS ;
typedef  TYPE_1__ STscObj ;
typedef  TYPE_2__ SSqlRes ;
typedef  TYPE_3__ SSqlObj ;

/* Variables and functions */
 int TSDB_CODE_CLI_OUT_OF_MEMORY ; 
 int TSDB_CODE_DISCONNECTED ; 
 int TSDB_CODE_INVALID_SQL ; 
 int TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int globalCode ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_3__*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,char*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_3__*,...) ; 

int FUNC11(TAOS *taos, const char *tableNameList) {
  const int32_t MAX_TABLE_NAME_LENGTH = 12*1024*1024; // 12MB list

  STscObj *pObj = (STscObj *)taos;
  if (pObj == NULL || pObj->signature != pObj) {
    globalCode = TSDB_CODE_DISCONNECTED;
    return TSDB_CODE_DISCONNECTED;
  }

  SSqlObj *pSql = pObj->pSql;
  SSqlRes *pRes = &pSql->res;

  pRes->numOfTotal = 0;  // the number of getting table meta from server
  pRes->code = 0;

  FUNC0(pSql->fp == NULL);
  FUNC10("%p tableNameList: %s pObj:%p", pSql, tableNameList, pObj);

  int32_t tblListLen = FUNC3(tableNameList);
  if (tblListLen > MAX_TABLE_NAME_LENGTH) {
    FUNC7("%p tableNameList too long, length:%d, maximum allowed:%d", pSql, tblListLen, MAX_TABLE_NAME_LENGTH);
    pRes->code = TSDB_CODE_INVALID_SQL;
    return pRes->code;
  }

  char* str = FUNC1(1, tblListLen + 1);
  if (str == NULL) {
    pRes->code = TSDB_CODE_CLI_OUT_OF_MEMORY;
    FUNC7("%p failed to malloc sql string buffer", pSql);
    return pRes->code;
  }

  FUNC4(str, tableNameList);
  pRes->code = (uint8_t) FUNC9(pSql, str, tblListLen);

  /*
   * set the qhandle to 0 before return in order to erase the qhandle value assigned in the previous successful query.
   * If qhandle is NOT set 0, the function of taos_free_result() will send message to server by calling tscProcessSql()
   * to free connection, which may cause segment fault, when the parse phrase is not even successfully executed.
   */
  pRes->qhandle = 0;
  pSql->thandle = NULL;
  FUNC2(str);

  if (pRes->code != TSDB_CODE_SUCCESS) {
    return pRes->code;
  }

  FUNC6(pSql);

  FUNC10("%p load multi metermeta result:%d %s pObj:%p", pSql, pRes->code, FUNC5(taos), pObj);
  if (pRes->code != TSDB_CODE_SUCCESS) {
    FUNC8(pSql);
  }

  return pRes->code;
}