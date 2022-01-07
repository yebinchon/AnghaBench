
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiUnaryNode ;
typedef int MultiNode ;
typedef int MultiExtendedOp ;


 int Assert (int ) ;
 int * ChildNode (int *) ;
 int CitusIsA (int *,int ) ;
 int MultiCollect ;
 int * ParentNode (int *) ;
 int SetChild (int *,int *) ;
 int UnaryOperator (int *) ;
 int pfree (int *) ;

__attribute__((used)) static void
ApplyExtendedOpNodes(MultiExtendedOp *originalNode, MultiExtendedOp *masterNode,
      MultiExtendedOp *workerNode)
{
 MultiNode *parentNode = ParentNode((MultiNode *) originalNode);
 MultiNode *collectNode = ChildNode((MultiUnaryNode *) originalNode);
 MultiNode *collectChildNode = ChildNode((MultiUnaryNode *) collectNode);


 Assert(CitusIsA(collectNode, MultiCollect));
 Assert(UnaryOperator(parentNode));


 SetChild((MultiUnaryNode *) parentNode, (MultiNode *) masterNode);
 SetChild((MultiUnaryNode *) masterNode, (MultiNode *) collectNode);


 SetChild((MultiUnaryNode *) collectNode, (MultiNode *) workerNode);
 SetChild((MultiUnaryNode *) workerNode, (MultiNode *) collectChildNode);


 pfree(originalNode);
}
