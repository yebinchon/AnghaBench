
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; } ;
typedef TYPE_1__ list_t ;


 int assert (int ) ;

size_t list_length(const list_t *list)
{
    assert(list != ((void*)0));
    return list->length;
}
