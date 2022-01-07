
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int sqlite3Close (int *,int) ;

int sqlite3_close_v2(sqlite3 *db){ return sqlite3Close(db,1); }
