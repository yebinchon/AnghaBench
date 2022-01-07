
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {scalar_t__ attgenerated; scalar_t__ attisdropped; int attname; } ;
struct TYPE_6__ {int natts; } ;
typedef int List ;
typedef TYPE_2__* Form_pg_attribute ;


 scalar_t__ ATTRIBUTE_GENERATED_STORED ;
 int * NIL ;
 char* NameStr (int ) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int * lappend (int *,char*) ;

__attribute__((used)) static List *
TupleDescColumnNameList(TupleDesc tupleDescriptor)
{
 List *columnNameList = NIL;
 int columnIndex = 0;

 for (columnIndex = 0; columnIndex < tupleDescriptor->natts; columnIndex++)
 {
  Form_pg_attribute currentColumn = TupleDescAttr(tupleDescriptor, columnIndex);
  char *columnName = NameStr(currentColumn->attname);

  if (currentColumn->attisdropped



   )
  {
   continue;
  }

  columnNameList = lappend(columnNameList, columnName);
 }

 return columnNameList;
}
