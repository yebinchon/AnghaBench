
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_24__ {scalar_t__* error_energy; scalar_t__* energy; } ;
struct TYPE_23__ {int framebits; int transient; int channels; TYPE_3__* block; int anticollapse; scalar_t__ anticollapse_needed; scalar_t__ size; int start_band; scalar_t__ pfilter; scalar_t__ silence; } ;
struct TYPE_22__ {int channels; scalar_t__** last_quantized_energy; int psyctx; } ;
typedef int OpusRangeCoder ;
typedef TYPE_1__ OpusEncContext ;
typedef TYPE_2__ CeltFrame ;
typedef TYPE_3__ CeltBlock ;


 int CELT_MAX_BANDS ;
 int celt_apply_preemph_filter (TYPE_1__*,TYPE_2__*) ;
 int celt_enc_quant_pfilter (int *,TYPE_2__*) ;
 int celt_enc_tf (TYPE_2__*,int *) ;
 int celt_frame_mdct (TYPE_1__*,TYPE_2__*) ;
 int celt_frame_setup_input (TYPE_1__*,TYPE_2__*) ;
 int celt_quant_coarse (TYPE_2__*,int *,scalar_t__**) ;
 int celt_quant_final (TYPE_1__*,int *,TYPE_2__*) ;
 int celt_quant_fine (TYPE_2__*,int *) ;
 int ff_celt_bitalloc (TYPE_2__*,int *,int) ;
 int ff_celt_quant_bands (TYPE_2__*,int *) ;
 int ff_opus_psy_celt_frame_init (int *,TYPE_2__*,int) ;
 scalar_t__ ff_opus_psy_celt_frame_process (int *,TYPE_2__*,int) ;
 int ff_opus_rc_enc_init (int *) ;
 int ff_opus_rc_enc_log (int *,int,int) ;
 int ff_opus_rc_put_raw (int *,int ,int) ;
 int memset (scalar_t__*,float,int) ;
 int opus_rc_tell (int *) ;

__attribute__((used)) static void celt_encode_frame(OpusEncContext *s, OpusRangeCoder *rc,
                              CeltFrame *f, int index)
{
    ff_opus_rc_enc_init(rc);

    ff_opus_psy_celt_frame_init(&s->psyctx, f, index);

    celt_frame_setup_input(s, f);

    if (f->silence) {
        if (f->framebits >= 16)
            ff_opus_rc_enc_log(rc, 1, 15);
        for (int ch = 0; ch < s->channels; ch++)
            memset(s->last_quantized_energy[ch], 0.0f, sizeof(float)*CELT_MAX_BANDS);
        return;
    }


    celt_apply_preemph_filter(s, f);
    if (f->pfilter) {
        ff_opus_rc_enc_log(rc, 0, 15);
        celt_enc_quant_pfilter(rc, f);
    }


    celt_frame_mdct(s, f);


    while (ff_opus_psy_celt_frame_process(&s->psyctx, f, index))
        celt_frame_mdct(s, f);

    ff_opus_rc_enc_init(rc);


    ff_opus_rc_enc_log(rc, 0, 15);


    if (!f->start_band && opus_rc_tell(rc) + 16 <= f->framebits)
        celt_enc_quant_pfilter(rc, f);


    if (f->size && opus_rc_tell(rc) + 3 <= f->framebits)
        ff_opus_rc_enc_log(rc, f->transient, 3);


    celt_quant_coarse (f, rc, s->last_quantized_energy);
    celt_enc_tf (f, rc);
    ff_celt_bitalloc (f, rc, 1);
    celt_quant_fine (f, rc);
    ff_celt_quant_bands(f, rc);


    if (f->anticollapse_needed)
        ff_opus_rc_put_raw(rc, f->anticollapse, 1);


    celt_quant_final(s, rc, f);

    for (int ch = 0; ch < f->channels; ch++) {
        CeltBlock *block = &f->block[ch];
        for (int i = 0; i < CELT_MAX_BANDS; i++)
            s->last_quantized_energy[ch][i] = block->energy[i] + block->error_energy[i];
    }
}
