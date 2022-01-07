
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rtable; } ;
struct TYPE_4__ {scalar_t__ rtekind; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ Query ;


 scalar_t__ NIL ;
 scalar_t__ RTE_RESULT ;
 scalar_t__ linitial (scalar_t__) ;
 int list_length (scalar_t__) ;

bool
HasEmptyJoinTree(Query *query)
{
 if (query->rtable == NIL)
 {
  return 1;
 }
 return 0;
}
