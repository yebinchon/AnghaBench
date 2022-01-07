
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {char* name; int layout; } ;


 int AVERROR_EOF ;
 unsigned int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* channel_layout_map ;

int av_get_standard_channel_layout(unsigned index, uint64_t *layout,
                                   const char **name)
{
    if (index >= FF_ARRAY_ELEMS(channel_layout_map))
        return AVERROR_EOF;
    if (layout) *layout = channel_layout_map[index].layout;
    if (name) *name = channel_layout_map[index].name;
    return 0;
}
