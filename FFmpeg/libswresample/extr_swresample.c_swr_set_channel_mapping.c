
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SwrContext {int const* channel_map; scalar_t__ in_convert; } ;


 int AVERROR (int ) ;
 int EINVAL ;

int swr_set_channel_mapping(struct SwrContext *s, const int *channel_map){
    if(!s || s->in_convert)
        return AVERROR(EINVAL);
    s->channel_map = channel_map;
    return 0;
}
