
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rightChildNode; } ;
typedef int MultiUnaryNode ;
typedef int MultiNode ;
typedef TYPE_1__ MultiBinaryNode ;


 int * GenerateNode (int *,int *) ;

__attribute__((used)) static MultiUnaryNode *
GenerateRightNode(MultiUnaryNode *currentNode, MultiBinaryNode *binaryNode)
{
 MultiNode *rightChildNode = binaryNode->rightChildNode;
 MultiUnaryNode *rightNodeGenerated = GenerateNode(currentNode, rightChildNode);

 return rightNodeGenerated;
}
