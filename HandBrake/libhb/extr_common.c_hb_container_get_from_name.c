
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int format; int short_name; int name; } ;
struct TYPE_4__ {TYPE_1__ item; } ;


 int HB_MUX_INVALID ;
 TYPE_2__* hb_containers ;
 int hb_containers_count ;
 int strcasecmp (int ,char const*) ;

int hb_container_get_from_name(const char *name)
{
    if (name == ((void*)0) || *name == '\0')
        goto fail;

    int i;
    for (i = 0; i < hb_containers_count; i++)
    {
        if (!strcasecmp(hb_containers[i].item.name, name) ||
            !strcasecmp(hb_containers[i].item.short_name, name))
        {
            return hb_containers[i].item.format;
        }
    }

fail:
    return HB_MUX_INVALID;
}
