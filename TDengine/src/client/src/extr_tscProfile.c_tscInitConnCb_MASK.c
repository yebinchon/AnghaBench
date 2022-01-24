#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TAOS_RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tscSlowQueryConn ; 
 int tscSlowQueryConnInitialized ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

void FUNC5(void *param, TAOS_RES *result, int code) {
  char *sql = param;
  if (code < 0) {
    FUNC2("taos:%p, slow query connect failed, code:%d", tscSlowQueryConn, code);
    FUNC1(tscSlowQueryConn);
    tscSlowQueryConn = NULL;
    tscSlowQueryConnInitialized = false;
    FUNC0(sql);
  } else {
    FUNC4("taos:%p, slow query connect success, code:%d", tscSlowQueryConn, code);
    tscSlowQueryConnInitialized = true;
    FUNC3(sql, NULL);
  }
}