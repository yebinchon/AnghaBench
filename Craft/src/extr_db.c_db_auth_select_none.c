
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db ;
 int db_enabled ;
 int sqlite3_exec (int ,char*,int *,int *,int *) ;

void db_auth_select_none() {
    if (!db_enabled) {
        return;
    }
    sqlite3_exec(db, "update auth.identity_token set selected = 0;",
        ((void*)0), ((void*)0), ((void*)0));
}
