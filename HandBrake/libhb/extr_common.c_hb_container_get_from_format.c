
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int format; } ;
typedef TYPE_1__ hb_container_t ;
struct TYPE_5__ {TYPE_1__ item; } ;


 TYPE_2__* hb_containers ;
 int hb_containers_count ;

hb_container_t* hb_container_get_from_format(int format)
{
    int i;
    for (i = 0; i < hb_containers_count; i++)
    {
        if (hb_containers[i].item.format == format)
        {
            return &hb_containers[i].item;
        }
    }

    return ((void*)0);
}
