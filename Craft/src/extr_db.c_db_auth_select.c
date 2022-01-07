
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;


 int db ;
 int db_auth_select_none () ;
 int db_enabled ;
 int sqlite3_bind_text (int *,int,char*,int,int *) ;
 int sqlite3_changes (int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int ,char const*,int,int **,int *) ;
 int sqlite3_step (int *) ;

int db_auth_select(char *username) {
    if (!db_enabled) {
        return 0;
    }
    db_auth_select_none();
    static const char *query =
        "update auth.identity_token set selected = 1 where username = ?;";
    sqlite3_stmt *stmt;
    sqlite3_prepare_v2(db, query, -1, &stmt, ((void*)0));
    sqlite3_bind_text(stmt, 1, username, -1, ((void*)0));
    sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    return sqlite3_changes(db);
}
