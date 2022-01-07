
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char RELKIND_PARTITIONED_TABLE ;
 char RELKIND_RELATION ;
 char get_rel_relkind (int ) ;

bool
RegularTable(Oid relationId)
{
 char relationKind = get_rel_relkind(relationId);

 if (relationKind == RELKIND_RELATION || relationKind == RELKIND_PARTITIONED_TABLE)
 {
  return 1;
 }

 return 0;
}
