
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int size; int * array; } ;
typedef TYPE_1__ ptrlist_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int bcopy (int *,int *,int) ;
 int * my_malloc (int) ;
 int * my_realloc (int *,int,int) ;

__attribute__((used)) static boolean_t
ptrlist_concat(ptrlist_t * list, ptrlist_t * extra)
{
    if (extra->count == 0)
 return (TRUE);

    if ((extra->count + list->count) > list->size) {
 int old_size = list->size;

 list->size = extra->count + list->count;
 if (list->array == ((void*)0))
     list->array = my_malloc(sizeof(*list->array) * list->size);
 else
     list->array = my_realloc(list->array, old_size,
         sizeof(*list->array) * list->size);
    }
    if (list->array == ((void*)0))
 return (FALSE);
    bcopy(extra->array, list->array + list->count,
   extra->count * sizeof(*list->array));
    list->count += extra->count;
    return (TRUE);
}
