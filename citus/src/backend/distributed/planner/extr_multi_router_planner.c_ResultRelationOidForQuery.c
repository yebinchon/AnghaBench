
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rtable; int resultRelation; } ;
struct TYPE_5__ {int relid; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ Query ;
typedef int Oid ;


 TYPE_1__* rt_fetch (int ,int ) ;

__attribute__((used)) static Oid
ResultRelationOidForQuery(Query *query)
{
 RangeTblEntry *resultRTE = rt_fetch(query->resultRelation, query->rtable);

 return resultRTE->relid;
}
