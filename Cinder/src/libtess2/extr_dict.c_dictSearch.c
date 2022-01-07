
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; int * key; } ;
struct TYPE_6__ {int frame; int (* leq ) (int ,int ,int *) ;TYPE_1__ head; } ;
typedef TYPE_1__ DictNode ;
typedef int DictKey ;
typedef TYPE_2__ Dict ;


 int stub1 (int ,int ,int *) ;

DictNode *dictSearch( Dict *dict, DictKey key )
{
 DictNode *node = &dict->head;

 do {
  node = node->next;
 } while( node->key != ((void*)0) && ! (*dict->leq)(dict->frame, key, node->key));

 return node;
}
