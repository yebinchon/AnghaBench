
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int start_band; int size; int silence; int transient; int blocks; float pf_gain; int pf_octave; int pf_period; int pf_tapset; int anticollapse; int alloc_trim; int alloc_boost; int tf_change; int spread; scalar_t__ dual_stereo; int end_band; int intensity_stereo; int skip_band_floor; scalar_t__ tf_select; scalar_t__ pfilter; scalar_t__ framebits; int channels; } ;
struct TYPE_10__ {int framesize; scalar_t__ mode; size_t bandwidth; } ;
struct TYPE_11__ {int inflection_points_count; int* inflection_points; TYPE_3__ p; TYPE_2__** steps; TYPE_1__* avctx; } ;
struct TYPE_9__ {int silence; } ;
struct TYPE_8__ {int channels; } ;
typedef TYPE_4__ OpusPsyContext ;
typedef TYPE_5__ CeltFrame ;


 int CELT_MAX_BANDS ;
 int CELT_OVERLAP ;
 int CELT_SPREAD_NORMAL ;
 int FFMIN (int,int) ;
 int OPUS_BLOCK_SIZE (int) ;
 scalar_t__ OPUS_MODE_HYBRID ;
 int * ff_celt_band_end ;
 int memset (int ,int ,int) ;

void ff_opus_psy_celt_frame_init(OpusPsyContext *s, CeltFrame *f, int index)
{
    int i, neighbouring_points = 0, start_offset = 0;
    int radius = (1 << s->p.framesize), step_offset = radius*index;
    int silence = 1;

    f->start_band = (s->p.mode == OPUS_MODE_HYBRID) ? 17 : 0;
    f->end_band = ff_celt_band_end[s->p.bandwidth];
    f->channels = s->avctx->channels;
    f->size = s->p.framesize;

    for (i = 0; i < (1 << f->size); i++)
        silence &= s->steps[index*(1 << f->size) + i]->silence;

    f->silence = silence;
    if (f->silence) {
        f->framebits = 0;
        return;
    }

    for (i = 0; i < s->inflection_points_count; i++) {
        if (s->inflection_points[i] >= step_offset) {
            start_offset = i;
            break;
        }
    }

    for (i = start_offset; i < FFMIN(radius, s->inflection_points_count - start_offset); i++) {
        if (s->inflection_points[i] < (step_offset + radius)) {
            neighbouring_points++;
        }
    }


    f->transient = neighbouring_points > 0;
    f->blocks = f->transient ? OPUS_BLOCK_SIZE(s->p.framesize)/CELT_OVERLAP : 1;


    f->pfilter = 0;
    f->pf_gain = 0.5f;
    f->pf_octave = 2;
    f->pf_period = 1;
    f->pf_tapset = 2;


    f->tf_select = 0;
    f->anticollapse = 1;
    f->alloc_trim = 5;
    f->skip_band_floor = f->end_band;
    f->intensity_stereo = f->end_band;
    f->dual_stereo = 0;
    f->spread = CELT_SPREAD_NORMAL;
    memset(f->tf_change, 0, sizeof(int)*CELT_MAX_BANDS);
    memset(f->alloc_boost, 0, sizeof(int)*CELT_MAX_BANDS);
}
