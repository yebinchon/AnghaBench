
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_5__ {TYPE_1__* rd_rel; int rd_att; } ;
struct TYPE_4__ {int relkind; } ;
typedef int RelationData ;
typedef TYPE_2__* Relation ;
typedef int FormData_pg_class ;


 int RELKIND_RELATION ;
 void* palloc0 (int) ;

__attribute__((used)) static Relation
StubRelation(TupleDesc tupleDescriptor)
{
 Relation stubRelation = palloc0(sizeof(RelationData));
 stubRelation->rd_att = tupleDescriptor;
 stubRelation->rd_rel = palloc0(sizeof(FormData_pg_class));
 stubRelation->rd_rel->relkind = RELKIND_RELATION;

 return stubRelation;
}
