
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rightChildNode; } ;
struct TYPE_5__ {struct TYPE_5__* parentNode; } ;
typedef TYPE_1__ MultiNode ;
typedef TYPE_2__ MultiBinaryNode ;



void
SetRightChild(MultiBinaryNode *parent, MultiNode *rightChild)
{
 parent->rightChildNode = rightChild;
 rightChild->parentNode = (MultiNode *) parent;
}
