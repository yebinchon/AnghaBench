
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ VarLevelsUpWalkerContext ;
typedef int Query ;


 int ContainsReferencesToOuterQueryWalker ;
 int query_tree_walker (int *,int ,TYPE_1__*,int) ;

__attribute__((used)) static bool
ContainsReferencesToOuterQuery(Query *query)
{
 VarLevelsUpWalkerContext context = { 0 };
 int flags = 0;

 return query_tree_walker(query, ContainsReferencesToOuterQueryWalker,
        &context, flags);
}
