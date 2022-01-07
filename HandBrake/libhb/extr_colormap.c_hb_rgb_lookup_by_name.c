
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int rgb; int * name; } ;


 TYPE_1__* colormap ;
 int strcasecmp (char const*,int *) ;

uint32_t hb_rgb_lookup_by_name(const char *color)
{
    int ii = 0;

    while (colormap[ii].name != ((void*)0))
    {
        if (!strcasecmp(color, colormap[ii].name))
            return colormap[ii].rgb;
        ii++;
    }
    return 0;
}
