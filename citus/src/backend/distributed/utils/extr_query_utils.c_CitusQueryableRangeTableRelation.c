
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rtekind; char relkind; } ;
typedef TYPE_1__ RangeTblEntry ;


 char RELKIND_FOREIGN_TABLE ;
 char RELKIND_MATVIEW ;
 char RELKIND_PARTITIONED_TABLE ;
 char RELKIND_RELATION ;
 scalar_t__ RTE_RELATION ;

__attribute__((used)) static bool
CitusQueryableRangeTableRelation(RangeTblEntry *rangeTableEntry)
{
 char relationKind = '\0';

 if (rangeTableEntry->rtekind != RTE_RELATION)
 {

  return 0;
 }

 relationKind = rangeTableEntry->relkind;
 if (relationKind == RELKIND_RELATION || relationKind == RELKIND_PARTITIONED_TABLE ||
  relationKind == RELKIND_FOREIGN_TABLE || relationKind == RELKIND_MATVIEW)
 {






  return 1;
 }

 return 0;
}
