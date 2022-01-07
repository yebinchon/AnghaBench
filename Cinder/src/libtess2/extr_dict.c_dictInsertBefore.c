
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nodePool; int frame; int (* leq ) (int ,int *,int *) ;} ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* prev; int * key; } ;
typedef TYPE_1__ DictNode ;
typedef int * DictKey ;
typedef TYPE_2__ Dict ;


 scalar_t__ bucketAlloc (int ) ;
 int stub1 (int ,int *,int *) ;

DictNode *dictInsertBefore( Dict *dict, DictNode *node, DictKey key )
{
 DictNode *newNode;

 do {
  node = node->prev;
 } while( node->key != ((void*)0) && ! (*dict->leq)(dict->frame, node->key, key));

 newNode = (DictNode *)bucketAlloc( dict->nodePool );
 if (newNode == ((void*)0)) return ((void*)0);

 newNode->key = key;
 newNode->next = node->next;
 node->next->prev = newNode;
 newNode->prev = node;
 node->next = newNode;

 return newNode;
}
