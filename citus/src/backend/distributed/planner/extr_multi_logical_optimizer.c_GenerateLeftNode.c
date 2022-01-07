
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * leftChildNode; } ;
typedef int MultiUnaryNode ;
typedef int MultiNode ;
typedef TYPE_1__ MultiBinaryNode ;


 int * GenerateNode (int *,int *) ;

__attribute__((used)) static MultiUnaryNode *
GenerateLeftNode(MultiUnaryNode *currentNode, MultiBinaryNode *binaryNode)
{
 MultiNode *leftChildNode = binaryNode->leftChildNode;
 MultiUnaryNode *leftNodeGenerated = GenerateNode(currentNode, leftChildNode);

 return leftNodeGenerated;
}
