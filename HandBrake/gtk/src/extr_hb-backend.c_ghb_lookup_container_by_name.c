
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int format; } ;
typedef TYPE_1__ hb_container_t ;
typedef int gchar ;


 int hb_container_get_from_name (int const*) ;
 TYPE_1__* hb_container_get_next (TYPE_1__ const*) ;

const hb_container_t*
ghb_lookup_container_by_name(const gchar *name)
{

    int format = hb_container_get_from_name(name);


    const hb_container_t *mux, *first;
    for (first = mux = hb_container_get_next(((void*)0)); mux != ((void*)0);
         mux = hb_container_get_next(mux))
    {
        if (format == mux->format)
        {
            return mux;
        }
    }

    return first;
}
