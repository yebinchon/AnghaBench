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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  db_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(char *username) {
    if (!db_enabled) {
        return 0;
    }
    FUNC0();
    static const char *query =
        "update auth.identity_token set selected = 1 where username = ?;";
    sqlite3_stmt *stmt;
    FUNC4(db, query, -1, &stmt, NULL);
    FUNC1(stmt, 1, username, -1, NULL);
    FUNC5(stmt);
    FUNC3(stmt);
    return FUNC2(db);
}