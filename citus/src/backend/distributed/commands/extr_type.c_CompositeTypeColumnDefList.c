
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ attisdropped; } ;
struct TYPE_7__ {int natts; } ;
typedef int * Relation ;
typedef int Oid ;
typedef int List ;
typedef TYPE_2__* Form_pg_attribute ;


 int AccessShareLock ;
 int InvalidOid ;
 int * NIL ;
 TYPE_1__* RelationGetDescr (int *) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int attributeFormToColumnDef (TYPE_2__*) ;
 int * lappend (int *,int ) ;
 int relation_close (int *,int ) ;
 int * relation_open (int ,int ) ;
 int typeidTypeRelid (int ) ;

__attribute__((used)) static List *
CompositeTypeColumnDefList(Oid typeOid)
{
 Relation relation = ((void*)0);
 Oid relationId = InvalidOid;
 TupleDesc tupleDescriptor = ((void*)0);
 int attributeIndex = 0;
 List *columnDefs = NIL;

 relationId = typeidTypeRelid(typeOid);
 relation = relation_open(relationId, AccessShareLock);

 tupleDescriptor = RelationGetDescr(relation);
 for (attributeIndex = 0; attributeIndex < tupleDescriptor->natts; attributeIndex++)
 {
  Form_pg_attribute attributeForm = TupleDescAttr(tupleDescriptor, attributeIndex);

  if (attributeForm->attisdropped)
  {

   continue;
  }

  columnDefs = lappend(columnDefs, attributeFormToColumnDef(attributeForm));
 }

 relation_close(relation, AccessShareLock);

 return columnDefs;
}
