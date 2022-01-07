
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;


 int db ;
 int db_auth_select (char*) ;
 int db_enabled ;
 int sqlite3_bind_int (int *,int,int) ;
 int sqlite3_bind_text (int *,int,char*,int,int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int ,char const*,int,int **,int *) ;
 int sqlite3_step (int *) ;

void db_auth_set(char *username, char *identity_token) {
    if (!db_enabled) {
        return;
    }
    static const char *query =
        "insert or replace into auth.identity_token "
        "(username, token, selected) values (?, ?, ?);";
    sqlite3_stmt *stmt;
    sqlite3_prepare_v2(db, query, -1, &stmt, ((void*)0));
    sqlite3_bind_text(stmt, 1, username, -1, ((void*)0));
    sqlite3_bind_text(stmt, 2, identity_token, -1, ((void*)0));
    sqlite3_bind_int(stmt, 3, 1);
    sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    db_auth_select(username);
}
