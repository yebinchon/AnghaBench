
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * leftChildNode; } ;
typedef int MultiUnaryNode ;
typedef int MultiTreeRoot ;
typedef int MultiNode ;
typedef TYPE_1__ MultiBinaryNode ;


 scalar_t__ BinaryOperator (int *) ;
 int * ChildNode (int *) ;
 scalar_t__ UnaryOperator (int *) ;

__attribute__((used)) static MultiNode *
LeftMostNode(MultiTreeRoot *multiTree)
{
 MultiNode *currentNode = (MultiNode *) multiTree;
 MultiNode *leftChildNode = ChildNode((MultiUnaryNode *) multiTree);

 while (leftChildNode != ((void*)0))
 {
  currentNode = leftChildNode;

  if (UnaryOperator(currentNode))
  {
   leftChildNode = ChildNode((MultiUnaryNode *) currentNode);
  }
  else if (BinaryOperator(currentNode))
  {
   MultiBinaryNode *binaryNode = (MultiBinaryNode *) currentNode;
   leftChildNode = binaryNode->leftChildNode;
  }
 }

 return currentNode;
}
