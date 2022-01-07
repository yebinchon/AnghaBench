
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int destructor_t ;
typedef int constructor_t ;
struct TYPE_4__ {void** data; int capacity; int destructor; int constructor; scalar_t__ size; } ;
typedef TYPE_1__ MyList ;


 scalar_t__ calloc (int,int) ;
 scalar_t__ malloc (int) ;
 int mylist_destroy (TYPE_1__**) ;

void mylist_create(MyList **list_p, int initial_capacity,
      constructor_t constructor, destructor_t destructor)
{
   MyList *list = ((void*)0);

   if (!list_p)
      return;

   if (initial_capacity < 0)
      initial_capacity = 0;

   list = *list_p;
   if (list)
      mylist_destroy(list_p);

   list = (MyList*)malloc(sizeof(MyList));
   *list_p = list;
   list->size = 0;
   list->constructor = constructor;
   list->destructor = destructor;

   if (initial_capacity > 0)
   {
      list->data = (void**)calloc(initial_capacity, sizeof(void*));
      list->capacity = initial_capacity;
   }
   else
   {
      list->data = ((void*)0);
      list->capacity = 0;
   }
}
