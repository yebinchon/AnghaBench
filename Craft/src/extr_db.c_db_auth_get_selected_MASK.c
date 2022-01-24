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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

int FUNC5(
    char *username, int username_length,
    char *identity_token, int identity_token_length)
{
    if (!db_enabled) {
        return 0;
    }
    static const char *query =
        "select username, token from auth.identity_token "
        "where selected = 1;";
    int result = 0;
    sqlite3_stmt *stmt;
    FUNC2(db, query, -1, &stmt, NULL);
    if (FUNC3(stmt) == SQLITE_ROW) {
        const char *a = (const char *)FUNC0(stmt, 0);
        const char *b = (const char *)FUNC0(stmt, 1);
        FUNC4(username, a, username_length - 1);
        username[username_length - 1] = '\0';
        FUNC4(identity_token, b, identity_token_length - 1);
        identity_token[identity_token_length - 1] = '\0';
        result = 1;
    }
    FUNC1(stmt);
    return result;
}