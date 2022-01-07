
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * schemaname; } ;
struct TYPE_4__ {TYPE_2__* typevar; } ;
typedef int Oid ;
typedef TYPE_1__ CompositeTypeStmt ;


 int RangeVarGetCreationNamespace (TYPE_2__*) ;
 int * get_namespace_name (int ) ;

void
QualifyCompositeTypeStmt(CompositeTypeStmt *stmt)
{
 if (stmt->typevar->schemaname == ((void*)0))
 {
  Oid creationSchema = RangeVarGetCreationNamespace(stmt->typevar);
  stmt->typevar->schemaname = get_namespace_name(creationSchema);
 }
}
