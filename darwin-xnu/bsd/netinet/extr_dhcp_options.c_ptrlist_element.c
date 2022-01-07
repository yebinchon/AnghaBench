
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void const** array; int count; } ;
typedef TYPE_1__ ptrlist_t ;



__attribute__((used)) static const void *
ptrlist_element(ptrlist_t * list, int i)
{
    if (list->array == ((void*)0))
 return (((void*)0));
    if (i < list->count)
 return (list->array[i]);
    return (((void*)0));
}
