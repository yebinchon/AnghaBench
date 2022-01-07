
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_3__ {int atttypid; } ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_attribute ;
typedef scalar_t__ AttrNumber ;


 int ERROR ;
 scalar_t__ InvalidAttrNumber ;
 TYPE_1__* TupleDescAttr (int ,scalar_t__) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ get_attnum (int ,char*) ;

__attribute__((used)) static Oid
TypeForColumnName(Oid relationId, TupleDesc tupleDescriptor, char *columnName)
{
 AttrNumber destAttrNumber = get_attnum(relationId, columnName);
 Form_pg_attribute attr = ((void*)0);

 if (destAttrNumber == InvalidAttrNumber)
 {
  ereport(ERROR, (errmsg("invalid attr? %s", columnName)));
 }

 attr = TupleDescAttr(tupleDescriptor, destAttrNumber - 1);
 return attr->atttypid;
}
