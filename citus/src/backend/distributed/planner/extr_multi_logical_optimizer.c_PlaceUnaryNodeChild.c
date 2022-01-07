
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiUnaryNode ;
typedef int MultiNode ;


 int * ChildNode (int *) ;
 int SetChild (int *,int *) ;

__attribute__((used)) static void
PlaceUnaryNodeChild(MultiUnaryNode *unaryNode, MultiUnaryNode *newChildNode)
{
 MultiNode *oldChildNode = ChildNode(unaryNode);

 SetChild(unaryNode, (MultiNode *) newChildNode);
 SetChild(newChildNode, oldChildNode);
}
