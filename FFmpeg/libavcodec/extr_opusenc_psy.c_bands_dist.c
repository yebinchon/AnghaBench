
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pvq; } ;
struct TYPE_7__ {int lambda; } ;
typedef int OpusRangeCoder ;
typedef TYPE_1__ OpusPsyContext ;
typedef TYPE_2__ CeltFrame ;


 int CELT_MAX_BANDS ;
 int ff_celt_bitalloc (TYPE_2__*,int *,int) ;
 int ff_opus_rc_enc_init (int *) ;
 float pvq_band_cost (int ,TYPE_2__*,int *,int,float*,int ) ;

__attribute__((used)) static int bands_dist(OpusPsyContext *s, CeltFrame *f, float *total_dist)
{
    int i, tdist = 0.0f;
    OpusRangeCoder dump;

    ff_opus_rc_enc_init(&dump);
    ff_celt_bitalloc(f, &dump, 1);

    for (i = 0; i < CELT_MAX_BANDS; i++) {
        float bits = 0.0f;
        float dist = pvq_band_cost(f->pvq, f, &dump, i, &bits, s->lambda);
        tdist += dist;
    }

    *total_dist = tdist;

    return 0;
}
