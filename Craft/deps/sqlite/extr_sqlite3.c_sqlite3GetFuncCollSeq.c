
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pColl; } ;
typedef TYPE_1__ sqlite3_context ;
typedef int CollSeq ;



__attribute__((used)) static CollSeq *sqlite3GetFuncCollSeq(sqlite3_context *context){
  return context->pColl;
}
