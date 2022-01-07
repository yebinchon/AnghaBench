
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int framesize; int frames; } ;
struct TYPE_7__ {int buffered_steps; TYPE_1__ p; TYPE_2__** steps; } ;
struct TYPE_6__ {int silence; } ;
typedef TYPE_3__ OpusPsyContext ;


 int CELT_BLOCK_120 ;
 int CELT_BLOCK_960 ;
 int FFMIN (int,int) ;

__attribute__((used)) static int flush_silent_frames(OpusPsyContext *s)
{
    int fsize, silent_frames;

    for (silent_frames = 0; silent_frames < s->buffered_steps; silent_frames++)
        if (!s->steps[silent_frames]->silence)
            break;
    if (--silent_frames < 0)
        return 0;

    for (fsize = CELT_BLOCK_960; fsize > CELT_BLOCK_120; fsize--) {
        if ((1 << fsize) > silent_frames)
            continue;
        s->p.frames = FFMIN(silent_frames / (1 << fsize), 48 >> fsize);
        s->p.framesize = fsize;
        return 1;
    }

    return 0;
}
