
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db ;
 int db_enabled ;
 int sqlite3_exec (int ,char*,int *,int *,int *) ;

void db_delete_all_signs() {
    if (!db_enabled) {
        return;
    }
    sqlite3_exec(db, "delete from sign;", ((void*)0), ((void*)0), ((void*)0));
}
