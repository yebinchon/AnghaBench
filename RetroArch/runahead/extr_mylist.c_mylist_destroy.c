
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* data; } ;
typedef TYPE_1__ MyList ;


 int free (TYPE_1__*) ;
 int mylist_resize (TYPE_1__*,int ,int) ;

void mylist_destroy(MyList **list_p)
{
   MyList *list = ((void*)0);
   if (!list_p)
      return;

   list = *list_p;

   if (list)
   {
      mylist_resize(list, 0, 0);
      free(list->data);
      free(list);
      *list_p = ((void*)0);
   }
}
