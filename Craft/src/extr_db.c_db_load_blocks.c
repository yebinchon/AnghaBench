
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Map ;


 scalar_t__ SQLITE_ROW ;
 int db_enabled ;
 int load_blocks_stmt ;
 int load_mtx ;
 int map_set (int *,int,int,int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sqlite3_bind_int (int ,int,int) ;
 int sqlite3_column_int (int ,int) ;
 int sqlite3_reset (int ) ;
 scalar_t__ sqlite3_step (int ) ;

void db_load_blocks(Map *map, int p, int q) {
    if (!db_enabled) {
        return;
    }
    mtx_lock(&load_mtx);
    sqlite3_reset(load_blocks_stmt);
    sqlite3_bind_int(load_blocks_stmt, 1, p);
    sqlite3_bind_int(load_blocks_stmt, 2, q);
    while (sqlite3_step(load_blocks_stmt) == SQLITE_ROW) {
        int x = sqlite3_column_int(load_blocks_stmt, 0);
        int y = sqlite3_column_int(load_blocks_stmt, 1);
        int z = sqlite3_column_int(load_blocks_stmt, 2);
        int w = sqlite3_column_int(load_blocks_stmt, 3);
        map_set(map, x, y, z, w);
    }
    mtx_unlock(&load_mtx);
}
