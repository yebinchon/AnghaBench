
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;


 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* channel_names ;

__attribute__((used)) static const char *get_channel_name(int channel_id)
{
    if (channel_id < 0 || channel_id >= FF_ARRAY_ELEMS(channel_names))
        return ((void*)0);
    return channel_names[channel_id].name;
}
