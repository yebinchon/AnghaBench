
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int frame_next; int frame; } ;
struct TYPE_4__ {unsigned int nb_in; TYPE_3__* in; } ;
typedef TYPE_1__ FFFrameSync ;


 int av_frame_free (int *) ;
 int av_freep (TYPE_3__**) ;

void ff_framesync_uninit(FFFrameSync *fs)
{
    unsigned i;

    for (i = 0; i < fs->nb_in; i++) {
        av_frame_free(&fs->in[i].frame);
        av_frame_free(&fs->in[i].frame_next);
    }

    av_freep(&fs->in);
}
