
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ resultRelation; int rtable; } ;
typedef int RangeTblEntry ;
typedef TYPE_1__ Query ;


 int * rt_fetch (scalar_t__,int ) ;

__attribute__((used)) static RangeTblEntry *
GetUpdateOrDeleteRTE(Query *query)
{
 if (query->resultRelation > 0)
 {
  return rt_fetch(query->resultRelation, query->rtable);
 }

 return ((void*)0);
}
