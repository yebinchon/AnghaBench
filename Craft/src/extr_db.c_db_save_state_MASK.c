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
 int /*<<< orphan*/  db ; 
 int /*<<< orphan*/  db_enabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(float x, float y, float z, float rx, float ry) {
    if (!db_enabled) {
        return;
    }
    static const char *query =
        "insert into state (x, y, z, rx, ry) values (?, ?, ?, ?, ?);";
    sqlite3_stmt *stmt;
    FUNC1(db, "delete from state;", NULL, NULL, NULL);
    FUNC3(db, query, -1, &stmt, NULL);
    FUNC0(stmt, 1, x);
    FUNC0(stmt, 2, y);
    FUNC0(stmt, 3, z);
    FUNC0(stmt, 4, rx);
    FUNC0(stmt, 5, ry);
    FUNC4(stmt);
    FUNC2(stmt);
}