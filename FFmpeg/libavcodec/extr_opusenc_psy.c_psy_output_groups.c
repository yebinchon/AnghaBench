
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int frames; void* framesize; int bandwidth; int mode; } ;
struct TYPE_12__ {TYPE_2__ p; TYPE_1__** steps; TYPE_4__* avctx; TYPE_3__* options; } ;
struct TYPE_11__ {int sample_rate; } ;
struct TYPE_10__ {int max_delay_ms; } ;
struct TYPE_8__ {scalar_t__ silence; } ;
typedef TYPE_5__ OpusPsyContext ;


 int CELT_BLOCK_960 ;
 void* FFMIN (int,int ) ;
 int OPUS_BANDWIDTH_FULLBAND ;
 int OPUS_MODE_CELT ;
 int OPUS_SAMPLES_TO_BLOCK_SIZE (int) ;
 scalar_t__ flush_silent_frames (TYPE_5__*) ;

__attribute__((used)) static void psy_output_groups(OpusPsyContext *s)
{
    int max_delay_samples = (s->options->max_delay_ms*s->avctx->sample_rate)/1000;
    int max_bsize = FFMIN(OPUS_SAMPLES_TO_BLOCK_SIZE(max_delay_samples), CELT_BLOCK_960);


    s->p.mode = OPUS_MODE_CELT;
    s->p.bandwidth = OPUS_BANDWIDTH_FULLBAND;


    if (s->steps[0]->silence && flush_silent_frames(s))
        return;

    s->p.framesize = FFMIN(max_bsize, CELT_BLOCK_960);
    s->p.frames = 1;
}
