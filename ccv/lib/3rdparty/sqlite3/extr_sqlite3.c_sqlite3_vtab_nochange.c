
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pOut; } ;
typedef TYPE_1__ sqlite3_context ;


 int assert (TYPE_1__*) ;
 int sqlite3_value_nochange (int ) ;

int sqlite3_vtab_nochange(sqlite3_context *p){
  assert( p );
  return sqlite3_value_nochange(p->pOut);
}
