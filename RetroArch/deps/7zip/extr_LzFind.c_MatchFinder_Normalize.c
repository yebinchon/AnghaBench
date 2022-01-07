
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int numRefs; int hash; } ;
typedef TYPE_1__ CMatchFinder ;


 int MatchFinder_GetSubValue (TYPE_1__*) ;
 int MatchFinder_Normalize3 (int ,int ,int ) ;
 int MatchFinder_ReduceOffsets (TYPE_1__*,int ) ;

__attribute__((used)) static void MatchFinder_Normalize(CMatchFinder *p)
{
  uint32_t subValue = MatchFinder_GetSubValue(p);
  MatchFinder_Normalize3(subValue, p->hash, p->numRefs);
  MatchFinder_ReduceOffsets(p, subValue);
}
