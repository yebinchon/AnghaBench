
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int ** data; } ;
typedef TYPE_1__ MyList ;


 int mylist_assign (TYPE_1__*,int,int *) ;

void mylist_remove_at(MyList *list, int index)
{
   int i;

   if (index < 0 || index >= list->size)
      return;

   mylist_assign(list, index, ((void*)0));

   for (i = index + 1; i < list->size; i++)
      list->data[i - 1] = list->data[i];

   list->size--;
   list->data[list->size] = ((void*)0);
}
