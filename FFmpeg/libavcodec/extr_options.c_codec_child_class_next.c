
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* priv_class; } ;
typedef TYPE_1__ AVCodec ;
typedef int AVClass ;


 TYPE_1__* av_codec_next (TYPE_1__*) ;

__attribute__((used)) static const AVClass *codec_child_class_next(const AVClass *prev)
{
    AVCodec *c = ((void*)0);


    while (prev && (c = av_codec_next(c)))
        if (c->priv_class == prev)
            break;


    while (c = av_codec_next(c))
        if (c->priv_class)
            return c->priv_class;
    return ((void*)0);
}
