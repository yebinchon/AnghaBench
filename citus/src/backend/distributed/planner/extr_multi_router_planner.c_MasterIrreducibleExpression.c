
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int containsVar; int varArgument; int badCoalesce; } ;
typedef TYPE_1__ WalkerState ;
typedef int Node ;


 int MasterIrreducibleExpressionWalker (int *,TYPE_1__*) ;

__attribute__((used)) static bool
MasterIrreducibleExpression(Node *expression, bool *varArgument, bool *badCoalesce)
{
 bool result;
 WalkerState data;
 data.containsVar = data.varArgument = data.badCoalesce = 0;

 result = MasterIrreducibleExpressionWalker(expression, &data);

 *varArgument |= data.varArgument;
 *badCoalesce |= data.badCoalesce;
 return result;
}
