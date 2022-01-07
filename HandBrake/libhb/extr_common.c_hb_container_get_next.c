
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hb_container_t ;
struct TYPE_2__ {int const* next; } ;
typedef TYPE_1__ hb_container_internal_t ;


 int const* hb_containers_first_item ;

const hb_container_t* hb_container_get_next(const hb_container_t *last)
{
    if (last == ((void*)0))
    {
        return hb_containers_first_item;
    }
    return ((hb_container_internal_t*)last)->next;
}
