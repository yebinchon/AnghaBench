
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int FindNodeCheck (int *,int ) ;
 int IsReadIntermediateResultFunction ;

bool
ContainsReadIntermediateResultFunction(Node *node)
{
 return FindNodeCheck(node, IsReadIntermediateResultFunction);
}
