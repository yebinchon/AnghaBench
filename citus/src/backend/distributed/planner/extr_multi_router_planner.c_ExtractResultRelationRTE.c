
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rtable; int resultRelation; } ;
typedef int RangeTblEntry ;
typedef TYPE_1__ Query ;


 int * rt_fetch (int ,int ) ;

RangeTblEntry *
ExtractResultRelationRTE(Query *query)
{
 return rt_fetch(query->resultRelation, query->rtable);
}
