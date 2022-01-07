
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
ShouldPullDistinctColumn(bool repartitionSubquery,
       bool groupedByDisjointPartitionColumn,
       bool hasNonPartitionColumnDistinctAgg)
{
 if (repartitionSubquery)
 {
  return 1;
 }

 if (groupedByDisjointPartitionColumn)
 {
  return 0;
 }
 else if (!groupedByDisjointPartitionColumn && hasNonPartitionColumnDistinctAgg)
 {
  return 1;
 }

 return 0;
}
