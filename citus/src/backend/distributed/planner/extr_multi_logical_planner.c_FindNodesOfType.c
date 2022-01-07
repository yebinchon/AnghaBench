
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * rightChildNode; int * leftChildNode; } ;
struct TYPE_3__ {int * childNode; } ;
typedef TYPE_1__ MultiUnaryNode ;
typedef int MultiNode ;
typedef TYPE_2__ MultiBinaryNode ;
typedef int List ;


 scalar_t__ BinaryOperator (int *) ;
 int CitusNodeTag (int *) ;
 int * NIL ;
 int T_Invalid ;
 scalar_t__ UnaryOperator (int *) ;
 int * lappend (int *,int *) ;
 int * list_concat (int *,int *) ;

List *
FindNodesOfType(MultiNode *node, int type)
{
 List *nodeList = NIL;
 int nodeType = T_Invalid;


 if (node == ((void*)0))
 {
  return NIL;
 }


 nodeType = CitusNodeTag(node);
 if (nodeType == type)
 {
  nodeList = lappend(nodeList, node);
 }

 if (UnaryOperator(node))
 {
  MultiNode *childNode = ((MultiUnaryNode *) node)->childNode;
  List *childNodeList = FindNodesOfType(childNode, type);

  nodeList = list_concat(nodeList, childNodeList);
 }
 else if (BinaryOperator(node))
 {
  MultiNode *leftChildNode = ((MultiBinaryNode *) node)->leftChildNode;
  MultiNode *rightChildNode = ((MultiBinaryNode *) node)->rightChildNode;

  List *leftChildNodeList = FindNodesOfType(leftChildNode, type);
  List *rightChildNodeList = FindNodesOfType(rightChildNode, type);

  nodeList = list_concat(nodeList, leftChildNodeList);
  nodeList = list_concat(nodeList, rightChildNodeList);
 }

 return nodeList;
}
