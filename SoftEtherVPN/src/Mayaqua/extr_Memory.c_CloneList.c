
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sorted; int num_reserved; int num_item; int p; int cmp; } ;
typedef TYPE_1__ LIST ;


 int Free (int ) ;
 int LIST_NUM (TYPE_1__*) ;
 TYPE_1__* NewList (int ) ;
 int ToArray (TYPE_1__*) ;

LIST *CloneList(LIST *o)
{
 LIST *n = NewList(o->cmp);


 Free(n->p);
 n->p = ToArray(o);
 n->num_item = n->num_reserved = LIST_NUM(o);
 n->sorted = o->sorted;

 return n;
}
