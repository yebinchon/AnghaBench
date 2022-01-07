
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_get_channel_layout (char*) ;
 int av_get_channel_layout_nb_channels (int ) ;
 char* split (char*,char) ;

__attribute__((used)) static int get_channel(char **map, uint64_t *ch, char delim)
{
    char *next = split(*map, delim);
    if (!next && delim == '-')
        return AVERROR(EINVAL);
    *ch = av_get_channel_layout(*map);
    if (av_get_channel_layout_nb_channels(*ch) != 1)
        return AVERROR(EINVAL);
    *map = next;
    return 0;
}
