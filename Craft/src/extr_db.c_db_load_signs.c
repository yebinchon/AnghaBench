
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SignList ;


 scalar_t__ SQLITE_ROW ;
 int db_enabled ;
 int load_signs_stmt ;
 int sign_list_add (int *,int,int,int,int,char const*) ;
 int sqlite3_bind_int (int ,int,int) ;
 int sqlite3_column_int (int ,int) ;
 scalar_t__ sqlite3_column_text (int ,int) ;
 int sqlite3_reset (int ) ;
 scalar_t__ sqlite3_step (int ) ;

void db_load_signs(SignList *list, int p, int q) {
    if (!db_enabled) {
        return;
    }
    sqlite3_reset(load_signs_stmt);
    sqlite3_bind_int(load_signs_stmt, 1, p);
    sqlite3_bind_int(load_signs_stmt, 2, q);
    while (sqlite3_step(load_signs_stmt) == SQLITE_ROW) {
        int x = sqlite3_column_int(load_signs_stmt, 0);
        int y = sqlite3_column_int(load_signs_stmt, 1);
        int z = sqlite3_column_int(load_signs_stmt, 2);
        int face = sqlite3_column_int(load_signs_stmt, 3);
        const char *text = (const char *)sqlite3_column_text(
            load_signs_stmt, 4);
        sign_list_add(list, x, y, z, face, text);
    }
}
