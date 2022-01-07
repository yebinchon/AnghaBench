
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiUnaryNode ;
typedef int MultiNode ;


 int * ChildNode (int *) ;
 int * ParentNode (int *) ;
 int ParentSetNewChild (int *,int *,int *) ;
 int pfree (int *) ;

__attribute__((used)) static void
RemoveUnaryNode(MultiUnaryNode *unaryNode)
{
 MultiNode *parentNode = ParentNode((MultiNode *) unaryNode);
 MultiNode *childNode = ChildNode(unaryNode);


 ParentSetNewChild(parentNode, (MultiNode *) unaryNode, childNode);

 pfree(unaryNode);
}
