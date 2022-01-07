
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiUnaryNode ;
typedef int MultiNode ;


 int * ChildNode (int *) ;

MultiNode *
GrandChildNode(MultiUnaryNode *multiNode)
{
 MultiNode *childNode = ChildNode(multiNode);
 MultiNode *grandChildNode = ChildNode((MultiUnaryNode *) childNode);

 return grandChildNode;
}
