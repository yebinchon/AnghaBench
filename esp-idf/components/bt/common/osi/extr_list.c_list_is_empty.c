
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; } ;
typedef TYPE_1__ list_t ;


 int assert (int ) ;

bool list_is_empty(const list_t *list)
{
    assert(list != ((void*)0));
    return (list->length == 0);
}
