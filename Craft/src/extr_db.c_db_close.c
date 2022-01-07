
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db ;
 int db_enabled ;
 int db_worker_stop () ;
 int delete_sign_stmt ;
 int delete_signs_stmt ;
 int get_key_stmt ;
 int insert_block_stmt ;
 int insert_light_stmt ;
 int insert_sign_stmt ;
 int load_blocks_stmt ;
 int load_lights_stmt ;
 int load_signs_stmt ;
 int set_key_stmt ;
 int sqlite3_close (int ) ;
 int sqlite3_exec (int ,char*,int *,int *,int *) ;
 int sqlite3_finalize (int ) ;

void db_close() {
    if (!db_enabled) {
        return;
    }
    db_worker_stop();
    sqlite3_exec(db, "commit;", ((void*)0), ((void*)0), ((void*)0));
    sqlite3_finalize(insert_block_stmt);
    sqlite3_finalize(insert_light_stmt);
    sqlite3_finalize(insert_sign_stmt);
    sqlite3_finalize(delete_sign_stmt);
    sqlite3_finalize(delete_signs_stmt);
    sqlite3_finalize(load_blocks_stmt);
    sqlite3_finalize(load_lights_stmt);
    sqlite3_finalize(load_signs_stmt);
    sqlite3_finalize(get_key_stmt);
    sqlite3_finalize(set_key_stmt);
    sqlite3_close(db);
}
