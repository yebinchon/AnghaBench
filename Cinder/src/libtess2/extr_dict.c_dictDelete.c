
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int nodePool; } ;
struct TYPE_10__ {TYPE_2__* next; TYPE_1__* prev; } ;
struct TYPE_9__ {TYPE_1__* prev; } ;
struct TYPE_8__ {TYPE_2__* next; } ;
typedef TYPE_3__ DictNode ;
typedef TYPE_4__ Dict ;


 int bucketFree (int ,TYPE_3__*) ;

void dictDelete( Dict *dict, DictNode *node )
{
 node->next->prev = node->prev;
 node->prev->next = node->next;
 bucketFree( dict->nodePool, node );
}
