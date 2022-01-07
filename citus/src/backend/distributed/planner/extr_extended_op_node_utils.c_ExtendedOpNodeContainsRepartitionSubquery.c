
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiUnaryNode ;
typedef int MultiNode ;
typedef int MultiExtendedOp ;


 int * ChildNode (int *) ;
 scalar_t__ CitusIsA (int *,int ) ;
 int MultiCollect ;
 int MultiTable ;
 int * ParentNode (int *) ;

__attribute__((used)) static bool
ExtendedOpNodeContainsRepartitionSubquery(MultiExtendedOp *originalOpNode)
{
 MultiNode *parentNode = ParentNode((MultiNode *) originalOpNode);
 MultiNode *childNode = ChildNode((MultiUnaryNode *) originalOpNode);

 if (CitusIsA(parentNode, MultiTable) && CitusIsA(childNode, MultiCollect))
 {
  return 1;
 }

 return 0;
}
