
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int offset; int freq; int mode; int amplitude; int phase; } ;
struct TYPE_4__ {int* nb_tones; TYPE_3__** tones; int avctx; } ;
typedef TYPE_1__ QDMCContext ;


 int AV_LOG_WARNING ;
 int const FF_ARRAY_ELEMS (TYPE_3__*) ;
 int av_log (int ,int ,char*) ;

__attribute__((used)) static void add_tone(QDMCContext *s, int group, int offset, int freq, int stereo_mode, int amplitude, int phase)
{
    const int index = s->nb_tones[group];

    if (index >= FF_ARRAY_ELEMS(s->tones[group])) {
        av_log(s->avctx, AV_LOG_WARNING, "Too many tones already in buffer, ignoring tone!\n");
        return;
    }

    s->tones[group][index].offset = offset;
    s->tones[group][index].freq = freq;
    s->tones[group][index].mode = stereo_mode;
    s->tones[group][index].amplitude = amplitude;
    s->tones[group][index].phase = phase;
    s->nb_tones[group]++;
}
