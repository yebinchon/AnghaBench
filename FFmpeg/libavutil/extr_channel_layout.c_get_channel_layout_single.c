
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_4__ {int layout; scalar_t__ name; } ;


 int FFMAX (int,int ) ;
 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 int av_get_default_channel_layout (int) ;
 TYPE_1__* channel_layout_map ;
 TYPE_1__* channel_names ;
 scalar_t__ errno ;
 int memcmp (scalar_t__,char const*,int) ;
 int strlen (scalar_t__) ;
 int strtol (char const*,char**,int) ;
 int strtoll (char const*,char**,int ) ;

__attribute__((used)) static uint64_t get_channel_layout_single(const char *name, int name_len)
{
    int i;
    char *end;
    int64_t layout;

    for (i = 0; i < FF_ARRAY_ELEMS(channel_layout_map); i++) {
        if (strlen(channel_layout_map[i].name) == name_len &&
            !memcmp(channel_layout_map[i].name, name, name_len))
            return channel_layout_map[i].layout;
    }
    for (i = 0; i < FF_ARRAY_ELEMS(channel_names); i++)
        if (channel_names[i].name &&
            strlen(channel_names[i].name) == name_len &&
            !memcmp(channel_names[i].name, name, name_len))
            return (int64_t)1 << i;

    errno = 0;
    i = strtol(name, &end, 10);

    if (!errno && (end + 1 - name == name_len && *end == 'c'))
        return av_get_default_channel_layout(i);

    errno = 0;
    layout = strtoll(name, &end, 0);
    if (!errno && end - name == name_len)
        return FFMAX(layout, 0);
    return 0;
}
