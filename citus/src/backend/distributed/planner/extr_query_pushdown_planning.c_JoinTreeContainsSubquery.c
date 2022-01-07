
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * jointree; } ;
typedef TYPE_1__ Query ;
typedef int Node ;
typedef int FromExpr ;


 int JoinTreeContainsSubqueryWalker (int *,TYPE_1__*) ;

bool
JoinTreeContainsSubquery(Query *query)
{
 FromExpr *joinTree = query->jointree;

 if (!joinTree)
 {
  return 0;
 }

 return JoinTreeContainsSubqueryWalker((Node *) joinTree, query);
}
