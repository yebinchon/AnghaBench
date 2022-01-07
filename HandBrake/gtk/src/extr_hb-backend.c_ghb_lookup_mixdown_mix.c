
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int amixdown; } ;


 TYPE_1__* ghb_lookup_mixdown (char const*) ;

int
ghb_lookup_mixdown_mix(const char *name)
{
    return ghb_lookup_mixdown(name)->amixdown;
}
