
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int amixdown; } ;
typedef TYPE_1__ hb_mixdown_t ;


 int HB_ACODEC_PASS_FLAG ;
 int HB_AMIXDOWN_NONE ;
 int HB_INVALID_AMIXDOWN ;
 TYPE_1__* hb_mixdown_get_next (TYPE_1__ const*) ;
 scalar_t__ hb_mixdown_is_supported (int,int,int ) ;

int hb_mixdown_get_best(uint32_t codec, uint64_t layout, int mixdown)
{

    if (codec & HB_ACODEC_PASS_FLAG)
        return HB_AMIXDOWN_NONE;

    int best_mixdown = HB_INVALID_AMIXDOWN;
    const hb_mixdown_t *audio_mixdown = hb_mixdown_get_next(((void*)0));


    while ((audio_mixdown = hb_mixdown_get_next(audio_mixdown)) != ((void*)0))
    {
        if ((mixdown == HB_INVALID_AMIXDOWN || audio_mixdown->amixdown <= mixdown) &&
            (hb_mixdown_is_supported(audio_mixdown->amixdown, codec, layout)))
        {
            best_mixdown = audio_mixdown->amixdown;
        }
    }
    return best_mixdown;
}
