
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Relation ;
typedef int Oid ;


 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int * RelationIdGetRelation (int ) ;
 int RelationIsValid (int *) ;
 int SearchSysCacheExists1 (int ,int ) ;
 int pgstat_initstats (int *) ;

__attribute__((used)) static Relation
try_relation_open_nolock(Oid relationId)
{
 Relation relation = ((void*)0);
 if (!SearchSysCacheExists1(RELOID, ObjectIdGetDatum(relationId)))
 {
  return ((void*)0);
 }

 relation = RelationIdGetRelation(relationId);
 if (!RelationIsValid(relation))
 {
  return ((void*)0);
 }

 pgstat_initstats(relation);

 return relation;
}
