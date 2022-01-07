
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int IsA (int *,int ) ;
 int Var ;

__attribute__((used)) static bool
IsVarNode(Node *node)
{
 return IsA(node, Var);
}
