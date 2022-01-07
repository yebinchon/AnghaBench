
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char DISTRIBUTE_BY_HASH ;
 char DISTRIBUTE_BY_NONE ;
 int EnsureLocalTableEmpty (int ) ;
 int RegularTable (int ) ;

__attribute__((used)) static void
EnsureLocalTableEmptyIfNecessary(Oid relationId, char distributionMethod,
         bool viaDepracatedAPI)
{
 if (viaDepracatedAPI)
 {
  EnsureLocalTableEmpty(relationId);
 }
 else if (distributionMethod != DISTRIBUTE_BY_HASH &&
    distributionMethod != DISTRIBUTE_BY_NONE)
 {
  EnsureLocalTableEmpty(relationId);
 }
 else if (!RegularTable(relationId))
 {
  EnsureLocalTableEmpty(relationId);
 }
}
