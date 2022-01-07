
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SQLITE_ROW ;
 int db_enabled ;
 int get_key_stmt ;
 int sqlite3_bind_int (int ,int,int) ;
 int sqlite3_column_int (int ,int ) ;
 int sqlite3_reset (int ) ;
 scalar_t__ sqlite3_step (int ) ;

int db_get_key(int p, int q) {
    if (!db_enabled) {
        return 0;
    }
    sqlite3_reset(get_key_stmt);
    sqlite3_bind_int(get_key_stmt, 1, p);
    sqlite3_bind_int(get_key_stmt, 2, q);
    if (sqlite3_step(get_key_stmt) == SQLITE_ROW) {
        return sqlite3_column_int(get_key_stmt, 0);
    }
    return 0;
}
