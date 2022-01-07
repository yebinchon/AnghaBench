
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int val; } ;
typedef TYPE_1__ node ;
struct TYPE_5__ {TYPE_1__* front; } ;
typedef TYPE_2__ list ;


 int free (int ) ;

void free_list_contents(list *l)
{
 node *n = l->front;
 while(n){
  free(n->val);
  n = n->next;
 }
}
