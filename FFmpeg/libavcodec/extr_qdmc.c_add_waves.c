
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int* cur_tone; int* nb_tones; TYPE_1__** tones; } ;
struct TYPE_6__ {int offset; int phase; int amplitude; int mode; int freq; } ;
typedef TYPE_1__ QDMCTone ;
typedef TYPE_2__ QDMCContext ;


 int add_wave (TYPE_2__*,int,int ,int,int ,int ,int ) ;
 int add_wave0 (TYPE_2__*,int,int ,int ,int ,int ) ;

__attribute__((used)) static void add_waves(QDMCContext *s, int current_subframe)
{
    int w, g;

    for (g = 0; g < 4; g++) {
        for (w = s->cur_tone[g]; w < s->nb_tones[g]; w++) {
            QDMCTone *t = &s->tones[g][w];

            if (current_subframe < t->offset)
                break;
            add_wave(s, t->offset, t->freq, g, t->mode, t->amplitude, t->phase);
        }
        s->cur_tone[g] = w;
    }
    for (w = s->cur_tone[4]; w < s->nb_tones[4]; w++) {
        QDMCTone *t = &s->tones[4][w];

        if (current_subframe < t->offset)
            break;
        add_wave0(s, t->offset, t->freq, t->mode, t->amplitude, t->phase);
    }
    s->cur_tone[4] = w;
}
