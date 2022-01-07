
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* sqlite3Malloc (int) ;
 scalar_t__ sqlite3_initialize () ;

void *sqlite3_malloc(int n){

  if( sqlite3_initialize() ) return 0;

  return n<=0 ? 0 : sqlite3Malloc(n);
}
