
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RecurringTuplesType ;
typedef int List ;


 int HasRecurringTuples ;
 int QTW_EXAMINE_RTES_BEFORE ;
 int range_table_walker (int *,int ,int *,int ) ;

__attribute__((used)) static bool
IsRecurringRangeTable(List *rangeTable, RecurringTuplesType *recurType)
{
 return range_table_walker(rangeTable, HasRecurringTuples, recurType,
         QTW_EXAMINE_RTES_BEFORE);
}
