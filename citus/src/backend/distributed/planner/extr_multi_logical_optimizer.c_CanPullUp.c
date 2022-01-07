
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PushDownStatus ;
typedef scalar_t__ PullUpStatus ;
typedef int MultiUnaryNode ;
typedef int MultiNode ;
typedef int MultiBinaryNode ;


 int Assert (int) ;
 int BinaryOperator (int *) ;
 scalar_t__ Commutative (int *,int *) ;
 scalar_t__ Factorizable (int *,int *) ;
 scalar_t__ PULL_UP_INVALID_FIRST ;
 scalar_t__ PULL_UP_NOT_VALID ;
 scalar_t__ PULL_UP_VALID ;
 scalar_t__ PUSH_DOWN_INVALID_FIRST ;
 scalar_t__ PUSH_DOWN_VALID ;
 int * ParentNode (int *) ;
 int UnaryOperator (int *) ;

__attribute__((used)) static PullUpStatus
CanPullUp(MultiUnaryNode *childNode)
{
 PullUpStatus pullUpStatus = PULL_UP_INVALID_FIRST;
 MultiNode *parentNode = ParentNode((MultiNode *) childNode);
 bool unaryParent = UnaryOperator(parentNode);
 bool binaryParent = BinaryOperator(parentNode);

 if (unaryParent)
 {




  PushDownStatus parentPushDownStatus = PUSH_DOWN_INVALID_FIRST;
  parentPushDownStatus = Commutative((MultiUnaryNode *) parentNode, childNode);

  if (parentPushDownStatus == PUSH_DOWN_VALID)
  {
   pullUpStatus = PULL_UP_VALID;
  }
  else
  {
   pullUpStatus = PULL_UP_NOT_VALID;
  }
 }
 else if (binaryParent)
 {
  pullUpStatus = Factorizable((MultiBinaryNode *) parentNode, childNode);
 }

 Assert(pullUpStatus != PULL_UP_INVALID_FIRST);
 return pullUpStatus;
}
