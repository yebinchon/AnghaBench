
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* sqlite3Realloc (void*,int) ;
 scalar_t__ sqlite3_initialize () ;

void *sqlite3_realloc(void *pOld, int n){

  if( sqlite3_initialize() ) return 0;

  return sqlite3Realloc(pOld, n);
}
