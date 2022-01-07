
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db ;
 int sqlite3_exec (int ,char*,int *,int *,int *) ;

void _db_commit() {
    sqlite3_exec(db, "commit; begin;", ((void*)0), ((void*)0), ((void*)0));
}
