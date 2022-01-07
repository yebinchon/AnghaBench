
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {int atttypid; scalar_t__ attisdropped; } ;
struct TYPE_6__ {int natts; } ;
typedef int Oid ;
typedef TYPE_2__* Form_pg_attribute ;


 int InvalidOid ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int * palloc0 (int) ;

__attribute__((used)) static Oid *
TypeArrayFromTupleDescriptor(TupleDesc tupleDescriptor)
{
 int columnCount = tupleDescriptor->natts;
 Oid *typeArray = palloc0(columnCount * sizeof(Oid));
 int columnIndex = 0;

 for (columnIndex = 0; columnIndex < columnCount; columnIndex++)
 {
  Form_pg_attribute attr = TupleDescAttr(tupleDescriptor, columnIndex);
  if (attr->attisdropped)
  {
   typeArray[columnIndex] = InvalidOid;
  }
  else
  {
   typeArray[columnIndex] = attr->atttypid;
  }
 }

 return typeArray;
}
