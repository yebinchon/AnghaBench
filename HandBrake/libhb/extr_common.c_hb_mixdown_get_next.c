
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hb_mixdown_t ;
struct TYPE_2__ {int const* next; } ;
typedef TYPE_1__ hb_mixdown_internal_t ;


 int const* hb_audio_mixdowns_first_item ;

const hb_mixdown_t* hb_mixdown_get_next(const hb_mixdown_t *last)
{
    if (last == ((void*)0))
    {
        return hb_audio_mixdowns_first_item;
    }
    return ((hb_mixdown_internal_t*)last)->next;
}
