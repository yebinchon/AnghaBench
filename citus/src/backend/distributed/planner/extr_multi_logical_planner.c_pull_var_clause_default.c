
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int List ;


 int PVC_RECURSE_AGGREGATES ;
 int PVC_RECURSE_WINDOWFUNCS ;
 int * pull_var_clause (int *,int) ;

List *
pull_var_clause_default(Node *node)
{




 List *columnList = pull_var_clause(node, PVC_RECURSE_AGGREGATES |
            PVC_RECURSE_WINDOWFUNCS);

 return columnList;
}
