
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; void const** array; } ;
typedef TYPE_1__ ptrlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ ptrlist_grow (TYPE_1__*) ;

__attribute__((used)) static boolean_t
ptrlist_add(ptrlist_t * list, const void * element)
{
    if (ptrlist_grow(list) == FALSE)
 return (FALSE);

    list->array[list->count++] = element;
    return (TRUE);
}
