
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ array; } ;
typedef TYPE_1__ ptrlist_t ;


 int my_free (scalar_t__) ;
 int ptrlist_init (TYPE_1__*) ;

__attribute__((used)) static void
ptrlist_free(ptrlist_t * list)
{
    if (list->array)
 my_free(list->array);
    ptrlist_init(list);
    return;
}
