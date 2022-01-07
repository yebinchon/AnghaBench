
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * leftChildNode; } ;
struct TYPE_9__ {int * childNode; } ;
typedef TYPE_1__ MultiUnaryNode ;
typedef int MultiNode ;
typedef TYPE_2__ MultiBinaryNode ;


 int BinaryOperator (int *) ;
 int * ParentNode (int *) ;
 int ParentSetNewChild (int *,int *,int *) ;
 int PushDownBelowUnaryChild (TYPE_1__*,TYPE_1__*) ;
 int SetChild (TYPE_1__*,int *) ;
 int SetLeftChild (TYPE_2__*,int *) ;
 int SetRightChild (TYPE_2__*,int *) ;
 int UnaryOperator (int *) ;

__attribute__((used)) static void
PullUpUnaryNode(MultiUnaryNode *unaryNode)
{
 MultiNode *parentNode = ParentNode((MultiNode *) unaryNode);
 bool unaryParent = UnaryOperator(parentNode);
 bool binaryParent = BinaryOperator(parentNode);

 if (unaryParent)
 {

  MultiUnaryNode *unaryParentNode = (MultiUnaryNode *) parentNode;
  PushDownBelowUnaryChild(unaryParentNode, unaryNode);
 }
 else if (binaryParent)
 {
  MultiBinaryNode *binaryParentNode = (MultiBinaryNode *) parentNode;
  MultiNode *parentParentNode = ParentNode((MultiNode *) binaryParentNode);
  MultiNode *childNode = unaryNode->childNode;


  if (binaryParentNode->leftChildNode == ((MultiNode *) unaryNode))
  {
   SetLeftChild(binaryParentNode, childNode);
  }
  else
  {
   SetRightChild(binaryParentNode, childNode);
  }


  ParentSetNewChild(parentParentNode, parentNode, (MultiNode *) unaryNode);


  SetChild(unaryNode, parentNode);
 }
}
