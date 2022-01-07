
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tVariantList ;
typedef int tFieldList ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {int * varList; int * pAddColumns; int name; } ;
typedef int SSQLToken ;
typedef TYPE_1__ SAlterTableSQL ;


 scalar_t__ ALTER_TABLE_ADD_COLUMN ;
 scalar_t__ ALTER_TABLE_TAGS_ADD ;
 int assert (int ) ;
 TYPE_1__* calloc (int,int) ;

SAlterTableSQL *tAlterTableSQLElems(SSQLToken *pMeterName, tFieldList *pCols, tVariantList *pVals, int32_t type) {
  SAlterTableSQL *pAlterTable = calloc(1, sizeof(SAlterTableSQL));
  pAlterTable->name = *pMeterName;

  if (type == ALTER_TABLE_ADD_COLUMN || type == ALTER_TABLE_TAGS_ADD) {
    pAlterTable->pAddColumns = pCols;
    assert(pVals == ((void*)0));
  } else {


    pAlterTable->varList = pVals;
    assert(pCols == ((void*)0));
  }

  return pAlterTable;
}
