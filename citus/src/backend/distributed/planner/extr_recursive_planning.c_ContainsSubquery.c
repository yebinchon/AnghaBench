
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;


 scalar_t__ JoinTreeContainsSubquery (int *) ;
 scalar_t__ WhereOrHavingClauseContainsSubquery (int *) ;

__attribute__((used)) static bool
ContainsSubquery(Query *query)
{
 return JoinTreeContainsSubquery(query) || WhereOrHavingClauseContainsSubquery(query);
}
