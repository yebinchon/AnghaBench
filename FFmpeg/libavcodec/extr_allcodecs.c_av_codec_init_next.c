
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* next; } ;
typedef TYPE_1__ AVCodec ;


 scalar_t__ av_codec_iterate (void**) ;

__attribute__((used)) static void av_codec_init_next(void)
{
    AVCodec *prev = ((void*)0), *p;
    void *i = 0;
    while ((p = (AVCodec*)av_codec_iterate(&i))) {
        if (prev)
            prev->next = p;
        prev = p;
    }
}
