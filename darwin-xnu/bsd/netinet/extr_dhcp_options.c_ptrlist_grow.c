
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int count; int * array; } ;
typedef TYPE_1__ ptrlist_t ;
typedef int boolean_t ;


 int FALSE ;
 int PTRLIST_NUMBER ;
 int TRUE ;
 int dprintf (char*) ;
 int * my_malloc (int) ;
 int * my_realloc (int *,int,int) ;

__attribute__((used)) static boolean_t
ptrlist_grow(ptrlist_t * list)
{
    if (list->array == ((void*)0)) {
 if (list->size == 0)
     list->size = PTRLIST_NUMBER;
 list->count = 0;
 list->array = my_malloc(sizeof(*list->array) * list->size);
    }
    else if (list->size == list->count) {
 dprintf(("doubling %d to %d\n", list->size, list->size * 2));
 list->array = my_realloc(list->array,
     sizeof(*list->array) * list->size,
     sizeof(*list->array) * list->size * 2);
 list->size *= 2;
    }
    if (list->array == ((void*)0))
 return (FALSE);
    return (TRUE);
}
