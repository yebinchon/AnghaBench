
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {char const* name; int * rgb_color; } ;
typedef TYPE_1__ ColorEntry ;


 unsigned int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* color_table ;

const char *av_get_known_color_name(int color_idx, const uint8_t **rgbp)
{
    const ColorEntry *color;

    if ((unsigned)color_idx >= FF_ARRAY_ELEMS(color_table))
        return ((void*)0);

    color = &color_table[color_idx];
    if (rgbp)
        *rgbp = color->rgb_color;

    return color->name;
}
