
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {scalar_t__ attgenerated; int atttypid; scalar_t__ attisdropped; } ;
struct TYPE_6__ {int natts; } ;
typedef int Oid ;
typedef TYPE_2__* Form_pg_attribute ;


 scalar_t__ ATTRIBUTE_GENERATED_STORED ;
 int CanUseBinaryCopyFormatForType (int ) ;
 int InvalidOid ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;

bool
CanUseBinaryCopyFormat(TupleDesc tupleDescription)
{
 bool useBinaryCopyFormat = 1;
 int totalColumnCount = tupleDescription->natts;
 int columnIndex = 0;

 for (columnIndex = 0; columnIndex < totalColumnCount; columnIndex++)
 {
  Form_pg_attribute currentColumn = TupleDescAttr(tupleDescription, columnIndex);
  Oid typeId = InvalidOid;

  if (currentColumn->attisdropped



   )
  {
   continue;
  }

  typeId = currentColumn->atttypid;
  if (!CanUseBinaryCopyFormatForType(typeId))
  {
   useBinaryCopyFormat = 0;
   break;
  }
 }

 return useBinaryCopyFormat;
}
