
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* parentNode; } ;
struct TYPE_5__ {TYPE_2__* childNode; } ;
typedef TYPE_1__ MultiUnaryNode ;
typedef TYPE_2__ MultiNode ;



void
SetChild(MultiUnaryNode *parent, MultiNode *child)
{
 parent->childNode = child;
 child->parentNode = (MultiNode *) parent;
}
