
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int * array; } ;
typedef TYPE_1__ ptrlist_t ;



__attribute__((used)) static int
ptrlist_count(ptrlist_t * list)
{
    if (list == ((void*)0) || list->array == ((void*)0))
 return (0);

    return (list->count);
}
