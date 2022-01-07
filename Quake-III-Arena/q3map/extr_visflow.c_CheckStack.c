
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* next; } ;
struct TYPE_6__ {TYPE_1__ pstack_head; } ;
typedef TYPE_2__ threaddata_t ;
struct TYPE_7__ {int * leaf; struct TYPE_7__* next; } ;
typedef TYPE_3__ pstack_t ;
typedef int leaf_t ;


 int Error (char*) ;

void CheckStack (leaf_t *leaf, threaddata_t *thread)
{
 pstack_t *p, *p2;

 for (p=thread->pstack_head.next ; p ; p=p->next)
 {

  if (p->leaf == leaf)
   Error ("CheckStack: leaf recursion");
  for (p2=thread->pstack_head.next ; p2 != p ; p2=p2->next)
   if (p2->leaf == p->leaf)
    Error ("CheckStack: late leaf recursion");
 }

}
