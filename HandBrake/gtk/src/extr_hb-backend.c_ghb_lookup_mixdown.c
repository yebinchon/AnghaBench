
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int amixdown; } ;
typedef TYPE_1__ hb_mixdown_t ;


 int hb_mixdown_get_from_name (char const*) ;
 TYPE_1__* hb_mixdown_get_next (TYPE_1__ const*) ;

const hb_mixdown_t*
ghb_lookup_mixdown(const char *name)
{

    int mix = hb_mixdown_get_from_name(name);


    const hb_mixdown_t *mixdown, *first;
    for (first = mixdown = hb_mixdown_get_next(((void*)0)); mixdown != ((void*)0);
         mixdown = hb_mixdown_get_next(mixdown))
    {
        if (mix == mixdown->amixdown)
        {
            return mixdown;
        }
    }

    return first;
}
