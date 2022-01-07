
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;
typedef int AttrNumber ;


 int CONSTROID ;
 int DatumGetArrayTypeP (int ) ;
 int DatumGetInt16 (int ) ;
 int INT2OID ;
 int NAMEDATALEN ;
 int SysCacheGetAttr (int ,int ,int,int*) ;
 int deconstruct_array (int ,int ,int,int,char,int **,int *,int*) ;
 char* get_attname (int ,int ,int) ;
 scalar_t__ strncmp (char*,char*,int ) ;

__attribute__((used)) static bool
HeapTupleOfForeignConstraintIncludesColumn(HeapTuple heapTuple, Oid relationId,
             int pgConstraintKey, char *columnName)
{
 Datum columnsDatum = 0;
 Datum *columnArray = ((void*)0);
 int columnCount = 0;
 int attrIdx = 0;
 bool isNull = 0;

 columnsDatum = SysCacheGetAttr(CONSTROID, heapTuple, pgConstraintKey, &isNull);
 deconstruct_array(DatumGetArrayTypeP(columnsDatum), INT2OID, 2, 1,
       's', &columnArray, ((void*)0), &columnCount);

 for (attrIdx = 0; attrIdx < columnCount; ++attrIdx)
 {
  AttrNumber attrNo = DatumGetInt16(columnArray[attrIdx]);

  char *colName = get_attname(relationId, attrNo, 0);
  if (strncmp(colName, columnName, NAMEDATALEN) == 0)
  {
   return 1;
  }
 }

 return 0;
}
