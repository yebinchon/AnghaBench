
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int leftChildNode; } ;
typedef int MultiUnaryNode ;
typedef int MultiNode ;
typedef TYPE_1__ MultiBinaryNode ;


 int SetChild (int *,int ) ;
 int SetLeftChild (TYPE_1__*,int *) ;

__attribute__((used)) static void
PlaceBinaryNodeLeftChild(MultiBinaryNode *binaryNode, MultiUnaryNode *newLeftChildNode)
{
 if (newLeftChildNode == ((void*)0))
 {
  return;
 }

 SetChild(newLeftChildNode, binaryNode->leftChildNode);
 SetLeftChild(binaryNode, (MultiNode *) newLeftChildNode);
}
