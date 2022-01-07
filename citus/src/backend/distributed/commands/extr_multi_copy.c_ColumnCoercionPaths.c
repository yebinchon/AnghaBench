
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_6__ {int natts; } ;
typedef scalar_t__ Oid ;
typedef int ListCell ;
typedef int List ;
typedef int CopyCoercionData ;


 int ConversionPathForTypes (scalar_t__,scalar_t__,int *) ;
 scalar_t__ InvalidOid ;
 scalar_t__* TypeArrayFromTupleDescriptor (TYPE_1__*) ;
 scalar_t__ TypeForColumnName (scalar_t__,TYPE_1__*,char*) ;
 char* lfirst (int *) ;
 int * list_head (int *) ;
 int * lnext (int *) ;
 int * palloc0 (int) ;

__attribute__((used)) static CopyCoercionData *
ColumnCoercionPaths(TupleDesc destTupleDescriptor, TupleDesc inputTupleDescriptor,
     Oid destRelId, List *columnNameList,
     Oid *finalColumnTypeArray)
{
 int columnIndex = 0;
 int columnCount = inputTupleDescriptor->natts;
 CopyCoercionData *coercePaths = palloc0(columnCount * sizeof(CopyCoercionData));
 Oid *inputTupleTypes = TypeArrayFromTupleDescriptor(inputTupleDescriptor);
 ListCell *currentColumnName = list_head(columnNameList);

 for (columnIndex = 0; columnIndex < columnCount; columnIndex++)
 {
  Oid destTupleType = InvalidOid;
  Oid inputTupleType = inputTupleTypes[columnIndex];
  char *columnName = lfirst(currentColumnName);

  if (inputTupleType == InvalidOid)
  {

   continue;
  }

  destTupleType = TypeForColumnName(destRelId, destTupleDescriptor, columnName);

  finalColumnTypeArray[columnIndex] = destTupleType;

  ConversionPathForTypes(inputTupleType, destTupleType,
          &coercePaths[columnIndex]);

  currentColumnName = lnext(currentColumnName);

  if (currentColumnName == ((void*)0))
  {

   break;
  }
 }

 return coercePaths;
}
