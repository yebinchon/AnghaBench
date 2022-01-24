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
struct TYPE_3__ {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  table; int /*<<< orphan*/  stable; int /*<<< orphan*/  metric; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  int /*<<< orphan*/  JsonBuf ;
typedef  TYPE_1__ HttpSqlCmd ;
typedef  int /*<<< orphan*/  HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  JsonObjStt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(HttpContext *pContext, HttpSqlCmd *cmd, TAOS_RES *result) {
  JsonBuf *jsonBuf = FUNC4(pContext);
  if (jsonBuf == NULL) return;

  // object begin
  FUNC1(jsonBuf);
  FUNC3(jsonBuf, JsonObjStt);

  // data
  FUNC1(jsonBuf);
  FUNC2(jsonBuf, "metric", 6, FUNC0(pContext, cmd->stable),
               (int)FUNC5(FUNC0(pContext, cmd->metric)));

  FUNC1(jsonBuf);
  FUNC2(jsonBuf, "stable", 6, FUNC0(pContext, cmd->stable),
               (int)FUNC5(FUNC0(pContext, cmd->stable)));

  FUNC1(jsonBuf);
  FUNC2(jsonBuf, "table", 5, FUNC0(pContext, cmd->table),
               (int)FUNC5(FUNC0(pContext, cmd->table)));

  FUNC1(jsonBuf);
  FUNC2(jsonBuf, "timestamp", 9, FUNC0(pContext, cmd->timestamp),
               (int)FUNC5(FUNC0(pContext, cmd->timestamp)));  // hack way
}