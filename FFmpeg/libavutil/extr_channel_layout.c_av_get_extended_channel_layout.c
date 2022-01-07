
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int AVERROR (int ) ;
 int EINVAL ;
 scalar_t__ av_get_channel_layout (char const*) ;
 int av_get_channel_layout_nb_channels (scalar_t__) ;
 int errno ;
 int strtol (char const*,char**,int) ;

int av_get_extended_channel_layout(const char *name, uint64_t* channel_layout, int* nb_channels)
{
    int nb = 0;
    char *end;
    uint64_t layout = av_get_channel_layout(name);

    if (layout) {
        *channel_layout = layout;
        *nb_channels = av_get_channel_layout_nb_channels(layout);
        return 0;
    }

    nb = strtol(name, &end, 10);
    if (!errno && *end == 'C' && *(end + 1) == '\0' && nb > 0 && nb < 64) {
        *channel_layout = 0;
        *nb_channels = nb;
        return 0;
    }

    return AVERROR(EINVAL);
}
