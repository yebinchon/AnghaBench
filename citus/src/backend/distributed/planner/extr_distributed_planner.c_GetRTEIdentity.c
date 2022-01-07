
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rtekind; int values_lists; } ;
typedef TYPE_1__ RangeTblEntry ;


 int Assert (int) ;
 int IntList ;
 int IsA (int ,int ) ;
 scalar_t__ RTE_RELATION ;
 int linitial_int (int ) ;
 int list_length (int ) ;

int
GetRTEIdentity(RangeTblEntry *rte)
{
 Assert(rte->rtekind == RTE_RELATION);
 Assert(IsA(rte->values_lists, IntList));
 Assert(list_length(rte->values_lists) == 1);

 return linitial_int(rte->values_lists);
}
