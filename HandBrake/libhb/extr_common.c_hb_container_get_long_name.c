
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int format; char const* long_name; } ;
typedef TYPE_1__ hb_container_t ;


 int HB_MUX_MASK ;
 TYPE_1__* hb_container_get_next (TYPE_1__ const*) ;

const char* hb_container_get_long_name(int format)
{
    if (!(format & HB_MUX_MASK))
        goto fail;

    const hb_container_t *container = ((void*)0);
    while ((container = hb_container_get_next(container)) != ((void*)0))
    {
        if (container->format == format)
        {
            return container->long_name;
        }
    }

fail:
    return ((void*)0);
}
