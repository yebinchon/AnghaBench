
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pools; } ;
typedef TYPE_1__ FFFramePool ;


 int av_buffer_pool_uninit (int *) ;
 int av_freep (TYPE_1__**) ;

void ff_frame_pool_uninit(FFFramePool **pool)
{
    int i;

    if (!pool || !*pool)
        return;

    for (i = 0; i < 4; i++) {
        av_buffer_pool_uninit(&(*pool)->pools[i]);
    }

    av_freep(pool);
}
