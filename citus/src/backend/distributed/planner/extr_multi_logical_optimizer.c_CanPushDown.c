
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * childNode; } ;
typedef scalar_t__ PushDownStatus ;
typedef TYPE_1__ MultiUnaryNode ;
typedef int MultiNode ;
typedef int MultiBinaryNode ;


 int Assert (int) ;
 int BinaryOperator (int *) ;
 scalar_t__ Commutative (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ Distributive (TYPE_1__*,int *) ;
 scalar_t__ PUSH_DOWN_INVALID_FIRST ;
 int UnaryOperator (int *) ;

__attribute__((used)) static PushDownStatus
CanPushDown(MultiUnaryNode *parentNode)
{
 PushDownStatus pushDownStatus = PUSH_DOWN_INVALID_FIRST;
 MultiNode *childNode = parentNode->childNode;
 bool unaryChild = UnaryOperator(childNode);
 bool binaryChild = BinaryOperator(childNode);

 if (unaryChild)
 {
  pushDownStatus = Commutative(parentNode, (MultiUnaryNode *) childNode);
 }
 else if (binaryChild)
 {
  pushDownStatus = Distributive(parentNode, (MultiBinaryNode *) childNode);
 }

 Assert(pushDownStatus != PUSH_DOWN_INVALID_FIRST);
 return pushDownStatus;
}
