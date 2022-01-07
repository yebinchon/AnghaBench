
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rtekind; int values_lists; } ;
typedef TYPE_1__ RangeTblEntry ;


 int Assert (int) ;
 scalar_t__ RTE_RELATION ;
 int list_make1_int (int) ;

__attribute__((used)) static void
AssignRTEIdentity(RangeTblEntry *rangeTableEntry, int rteIdentifier)
{
 Assert(rangeTableEntry->rtekind == RTE_RELATION);

 rangeTableEntry->values_lists = list_make1_int(rteIdentifier);
}
