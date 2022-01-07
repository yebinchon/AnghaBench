
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_value ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ Mem ;


 scalar_t__ SQLITE_TEXT ;
 int applyNumericAffinity (TYPE_1__*) ;
 int sqlite3VdbeMemStoreType (TYPE_1__*) ;

int sqlite3_value_numeric_type(sqlite3_value *pVal){
  Mem *pMem = (Mem*)pVal;
  if( pMem->type==SQLITE_TEXT ){
    applyNumericAffinity(pMem);
    sqlite3VdbeMemStoreType(pMem);
  }
  return pMem->type;
}
