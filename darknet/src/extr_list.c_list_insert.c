
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* prev; struct TYPE_5__* next; void* val; } ;
typedef TYPE_1__ node ;
struct TYPE_6__ {int size; TYPE_1__* back; TYPE_1__* front; } ;
typedef TYPE_2__ list ;


 TYPE_1__* malloc (int) ;

void list_insert(list *l, void *val)
{
 node *new = malloc(sizeof(node));
 new->val = val;
 new->next = 0;

 if(!l->back){
  l->front = new;
  new->prev = 0;
 }else{
  l->back->next = new;
  new->prev = l->back;
 }
 l->back = new;
 ++l->size;
}
