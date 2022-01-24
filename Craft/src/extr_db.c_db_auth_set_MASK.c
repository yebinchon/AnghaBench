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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  db_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(char *username, char *identity_token) {
    if (!db_enabled) {
        return;
    }
    static const char *query =
        "insert or replace into auth.identity_token "
        "(username, token, selected) values (?, ?, ?);";
    sqlite3_stmt *stmt;
    FUNC4(db, query, -1, &stmt, NULL);
    FUNC2(stmt, 1, username, -1, NULL);
    FUNC2(stmt, 2, identity_token, -1, NULL);
    FUNC1(stmt, 3, 1);
    FUNC5(stmt);
    FUNC3(stmt);
    FUNC0(username);
}