
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_4__ {double iJD; } ;
typedef TYPE_1__ DateTime ;


 int computeJD (TYPE_1__*) ;
 scalar_t__ isDate (int *,int,int **,TYPE_1__*) ;
 int sqlite3_result_double (int *,double) ;

__attribute__((used)) static void juliandayFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  DateTime x;
  if( isDate(context, argc, argv, &x)==0 ){
    computeJD(&x);
    sqlite3_result_double(context, x.iJD/86400000.0);
  }
}
