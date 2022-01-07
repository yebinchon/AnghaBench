
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * childNode; } ;
typedef TYPE_1__ MultiUnaryNode ;
typedef int MultiNode ;



MultiNode *
ChildNode(MultiUnaryNode *multiNode)
{
 MultiNode *childNode = multiNode->childNode;
 return childNode;
}
