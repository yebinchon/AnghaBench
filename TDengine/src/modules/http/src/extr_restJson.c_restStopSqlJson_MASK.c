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
struct TYPE_3__ {int /*<<< orphan*/  numOfRows; } ;
typedef  int /*<<< orphan*/  JsonBuf ;
typedef  TYPE_1__ HttpSqlCmd ;
typedef  int /*<<< orphan*/  HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  JsonArrEnd ; 
 int /*<<< orphan*/  JsonObjEnd ; 
 int /*<<< orphan*/  REST_JSON_ROWS ; 
 int /*<<< orphan*/  REST_JSON_ROWS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(HttpContext *pContext, HttpSqlCmd *cmd) {
  JsonBuf *jsonBuf = FUNC4(pContext);
  if (jsonBuf == NULL) return;

  // data array end
  FUNC3(jsonBuf, JsonArrEnd);

  // rows
  FUNC1(jsonBuf);
  FUNC2(jsonBuf, REST_JSON_ROWS, REST_JSON_ROWS_LEN);
  FUNC0(jsonBuf, cmd->numOfRows);

  // object end
  FUNC3(jsonBuf, JsonObjEnd);

  FUNC5(jsonBuf);
}