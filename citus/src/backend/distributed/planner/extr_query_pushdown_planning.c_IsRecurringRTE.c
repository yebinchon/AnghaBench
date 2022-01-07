
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RecurringTuplesType ;
typedef int RangeTblEntry ;


 int IsRecurringRangeTable (int ,int *) ;
 int list_make1 (int *) ;

__attribute__((used)) static bool
IsRecurringRTE(RangeTblEntry *rangeTableEntry, RecurringTuplesType *recurType)
{
 return IsRecurringRangeTable(list_make1(rangeTableEntry), recurType);
}
