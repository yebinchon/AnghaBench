#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int8_t ;
struct TYPE_8__ {TYPE_3__* pSql; struct TYPE_8__* signature; } ;
struct TYPE_6__ {char* payload; } ;
struct TYPE_5__ {unsigned char code; } ;
struct TYPE_7__ {TYPE_2__ cmd; TYPE_1__ res; } ;
typedef  int /*<<< orphan*/  TAOS ;
typedef  TYPE_4__ STscObj ;

/* Variables and functions */
 unsigned char TSDB_CODE_INVALID_SQL ; 
 unsigned char TSDB_CODE_OTHERS ; 
 size_t globalCode ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** tsError ; 

char *FUNC3(TAOS *taos) {
  STscObj *     pObj = (STscObj *)taos;
  unsigned char code;
  char          temp[256] = {0};

  if (pObj == NULL || pObj->signature != pObj) return tsError[globalCode];

  if ((int8_t)(pObj->pSql->res.code) == -1)
    code = TSDB_CODE_OTHERS;
  else
    code = pObj->pSql->res.code;

  if (code == TSDB_CODE_INVALID_SQL) {
    FUNC0(temp, FUNC2(temp), "invalid SQL: %s", pObj->pSql->cmd.payload);
    FUNC1(pObj->pSql->cmd.payload, temp);
    return pObj->pSql->cmd.payload;
  } else {
    return tsError[code];
  }
}