
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiUnaryNode ;
typedef int MultiNode ;


 int * ChildNode (int *) ;
 int * ParentNode (int *) ;
 int ParentSetNewChild (int *,int *,int *) ;
 int SetChild (int *,int *) ;

__attribute__((used)) static void
PushDownBelowUnaryChild(MultiUnaryNode *currentNode, MultiUnaryNode *childNode)
{
 MultiNode *parentNode = ParentNode((MultiNode *) currentNode);
 MultiNode *childChildNode = ChildNode(childNode);


 ParentSetNewChild(parentNode, (MultiNode *) currentNode, (MultiNode *) childNode);


 SetChild(childNode, (MultiNode *) currentNode);


 SetChild(currentNode, childChildNode);
}
