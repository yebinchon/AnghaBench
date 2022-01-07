
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_4__ {int natts; } ;
typedef int Oid ;
typedef int FmgrInfo ;


 int * TypeArrayFromTupleDescriptor (TYPE_1__*) ;
 int * TypeOutputFunctions (int ,int *,int) ;

FmgrInfo *
ColumnOutputFunctions(TupleDesc rowDescriptor, bool binaryFormat)
{
 uint32 columnCount = (uint32) rowDescriptor->natts;
 Oid *columnTypes = TypeArrayFromTupleDescriptor(rowDescriptor);
 FmgrInfo *outputFunctions =
  TypeOutputFunctions(columnCount, columnTypes, binaryFormat);

 return outputFunctions;
}
