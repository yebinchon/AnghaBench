
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ gint ;


 scalar_t__ HB_AMIXDOWN_NONE ;
 scalar_t__ HB_INVALID_AMIXDOWN ;
 scalar_t__ hb_mixdown_get_best (scalar_t__,int ,scalar_t__) ;

gint
ghb_get_best_mix(uint64_t layout, gint acodec, gint mix)
{
    if (mix == HB_AMIXDOWN_NONE)
        mix = HB_INVALID_AMIXDOWN;

    return hb_mixdown_get_best(acodec, layout, mix);
}
