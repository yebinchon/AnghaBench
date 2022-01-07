
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; void** data; int (* destructor ) (void*) ;} ;
typedef TYPE_1__ MyList ;


 int stub1 (void*) ;

void mylist_assign(MyList *list, int index, void *value)
{
   void *old_element = ((void*)0);

   if (index < 0 || index >= list->size)
      return;

   old_element = list->data[index];
   list->destructor(old_element);
   list->data[index] = value;
}
