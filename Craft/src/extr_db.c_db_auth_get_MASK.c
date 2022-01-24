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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

int FUNC6(
    char *username,
    char *identity_token, int identity_token_length)
{
    if (!db_enabled) {
        return 0;
    }
    static const char *query =
        "select token from auth.identity_token "
        "where username = ?;";
    int result = 0;
    sqlite3_stmt *stmt;
    FUNC3(db, query, -1, &stmt, NULL);
    FUNC0(stmt, 1, username, -1, NULL);
    if (FUNC4(stmt) == SQLITE_ROW) {
        const char *a = (const char *)FUNC1(stmt, 0);
        FUNC5(identity_token, a, identity_token_length - 1);
        identity_token[identity_token_length - 1] = '\0';
        result = 1;
    }
    FUNC2(stmt);
    return result;
}