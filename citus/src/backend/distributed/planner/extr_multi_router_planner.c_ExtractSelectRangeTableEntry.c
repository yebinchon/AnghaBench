
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int rtable; TYPE_1__* jointree; } ;
struct TYPE_8__ {int rtindex; } ;
struct TYPE_7__ {int * fromlist; } ;
typedef TYPE_2__ RangeTblRef ;
typedef int RangeTblEntry ;
typedef TYPE_3__ Query ;
typedef int List ;


 int Assert (int ) ;
 int InsertSelectIntoDistributedTable (TYPE_3__*) ;
 TYPE_2__* linitial (int *) ;
 int * rt_fetch (int ,int ) ;

RangeTblEntry *
ExtractSelectRangeTableEntry(Query *query)
{
 List *fromList = ((void*)0);
 RangeTblRef *reference = ((void*)0);
 RangeTblEntry *subqueryRte = ((void*)0);

 Assert(InsertSelectIntoDistributedTable(query));





 fromList = query->jointree->fromlist;
 reference = linitial(fromList);
 subqueryRte = rt_fetch(reference->rtindex, query->rtable);

 return subqueryRte;
}
