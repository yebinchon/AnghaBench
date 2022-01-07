
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int Node ;


 int FindNodeCheck (int *,int ) ;
 int IsDistributedTableRTE ;

bool
QueryContainsDistributedTableRTE(Query *query)
{
 return FindNodeCheck((Node *) query, IsDistributedTableRTE);
}
