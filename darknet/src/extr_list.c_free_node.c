
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ node ;


 int free (TYPE_1__*) ;

void free_node(node *n)
{
 node *next;
 while(n) {
  next = n->next;
  free(n);
  n = next;
 }
}
