
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * leftChildNode; } ;
typedef int MultiUnaryNode ;
typedef int MultiNode ;
typedef TYPE_1__ MultiBinaryNode ;


 int BinaryOperator (int *) ;
 int SetChild (int *,int *) ;
 int SetLeftChild (TYPE_1__*,int *) ;
 int SetRightChild (TYPE_1__*,int *) ;
 int UnaryOperator (int *) ;

__attribute__((used)) static void
ParentSetNewChild(MultiNode *parentNode, MultiNode *oldChildNode,
      MultiNode *newChildNode)
{
 bool unaryParent = UnaryOperator(parentNode);
 bool binaryParent = BinaryOperator(parentNode);

 if (unaryParent)
 {
  MultiUnaryNode *unaryParentNode = (MultiUnaryNode *) parentNode;
  SetChild(unaryParentNode, newChildNode);
 }
 else if (binaryParent)
 {
  MultiBinaryNode *binaryParentNode = (MultiBinaryNode *) parentNode;


  if (binaryParentNode->leftChildNode == oldChildNode)
  {
   SetLeftChild(binaryParentNode, newChildNode);
  }
  else
  {
   SetRightChild(binaryParentNode, newChildNode);
  }
 }
}
