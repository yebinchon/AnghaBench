
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int Node ;


 int CitusIsMutableFunction ;
 int FindNodeCheck (int *,int ) ;

bool
RequiresMasterEvaluation(Query *query)
{
 return FindNodeCheck((Node *) query, CitusIsMutableFunction);
}
