
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; void** data; } ;
typedef TYPE_1__ MyList ;


 int mylist_resize (TYPE_1__*,int,int) ;

void *mylist_add_element(MyList *list)
{
   int old_size;

   if (!list)
      return ((void*)0);

   old_size = list->size;
   mylist_resize(list, old_size + 1, 1);
   return list->data[old_size];
}
