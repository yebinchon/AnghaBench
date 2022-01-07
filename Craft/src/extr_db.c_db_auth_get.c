
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;


 scalar_t__ SQLITE_ROW ;
 int db ;
 int db_enabled ;
 int sqlite3_bind_text (int *,int,char*,int,int *) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int ,char const*,int,int **,int *) ;
 scalar_t__ sqlite3_step (int *) ;
 int strncpy (char*,char const*,int) ;

int db_auth_get(
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
    sqlite3_prepare_v2(db, query, -1, &stmt, ((void*)0));
    sqlite3_bind_text(stmt, 1, username, -1, ((void*)0));
    if (sqlite3_step(stmt) == SQLITE_ROW) {
        const char *a = (const char *)sqlite3_column_text(stmt, 0);
        strncpy(identity_token, a, identity_token_length - 1);
        identity_token[identity_token_length - 1] = '\0';
        result = 1;
    }
    sqlite3_finalize(stmt);
    return result;
}
