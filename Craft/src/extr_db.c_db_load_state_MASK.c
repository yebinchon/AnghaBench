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
typedef  int /*<<< orphan*/  sqlite3_stmt ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  db ; 
 int /*<<< orphan*/  db_enabled ; 
 float FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(float *x, float *y, float *z, float *rx, float *ry) {
    if (!db_enabled) {
        return 0;
    }
    static const char *query =
        "select x, y, z, rx, ry from state;";
    int result = 0;
    sqlite3_stmt *stmt;
    FUNC2(db, query, -1, &stmt, NULL);
    if (FUNC3(stmt) == SQLITE_ROW) {
        *x = FUNC0(stmt, 0);
        *y = FUNC0(stmt, 1);
        *z = FUNC0(stmt, 2);
        *rx = FUNC0(stmt, 3);
        *ry = FUNC0(stmt, 4);
        result = 1;
    }
    FUNC1(stmt);
    return result;
}