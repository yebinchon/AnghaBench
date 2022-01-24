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
struct TYPE_3__ {int /*<<< orphan*/  code; } ;
typedef  int /*<<< orphan*/  JsonBuf ;
typedef  TYPE_1__ HttpSqlCmd ;
typedef  int /*<<< orphan*/  HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  JsonObjEnd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(HttpContext *pContext, HttpSqlCmd *cmd) {
  JsonBuf *jsonBuf = FUNC3(pContext);
  if (jsonBuf == NULL) return;

  // data
  FUNC0(jsonBuf);
  FUNC1(jsonBuf, cmd->code);

  // object end
  FUNC2(jsonBuf, JsonObjEnd);
}