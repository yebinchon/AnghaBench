
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_6__ {int* enh_buf; int* prevResidual; int state_short_len; int nsub; } ;
struct TYPE_5__ {int state_first; int start; int gain_index; int cb_index; int idx; int ifm; } ;
typedef TYPE_1__ ILBCFrame ;
typedef TYPE_2__ ILBCContext ;


 size_t CB_HALFFILTERLEN ;
 int CB_MEML ;
 int CB_NSTAGES ;
 int LPC_FILTERORDER ;
 int MEM_LF_TBL ;
 int STATE_LEN ;
 int ST_MEM_L_TBL ;
 int SUBL ;
 int construct_vector (int*,int ,int ,int*,int,int) ;
 int memcpy (int*,int*,int) ;
 int memmove (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int reverse_memcpy (int*,int*,int) ;
 int state_construct (int ,int ,int*,int*,int) ;

__attribute__((used)) static void decode_residual(ILBCContext *s,
                            ILBCFrame *encbits,
                            int16_t *decresidual,
                            int16_t *syntdenum)
{
    int16_t meml_gotten, Nfor, Nback, diff, start_pos;
    int16_t subcount, subframe;
    int16_t *reverseDecresidual = s->enh_buf;
    int16_t *memVec = s->prevResidual;
    int16_t *mem = &memVec[CB_HALFFILTERLEN];

    diff = STATE_LEN - s->state_short_len;

    if (encbits->state_first == 1) {
        start_pos = (encbits->start - 1) * SUBL;
    } else {
        start_pos = (encbits->start - 1) * SUBL + diff;
    }



    state_construct(encbits->ifm, encbits->idx, &syntdenum[(encbits->start - 1) * (LPC_FILTERORDER + 1)], &decresidual[start_pos], s->state_short_len);

    if (encbits->state_first) {

        memset(mem, 0, (int16_t) (CB_MEML - s->state_short_len) * 2);
        memcpy(mem + CB_MEML - s->state_short_len, decresidual + start_pos, s->state_short_len * 2);



        construct_vector(&decresidual[start_pos + s->state_short_len], encbits->cb_index, encbits->gain_index, mem + CB_MEML - ST_MEM_L_TBL, ST_MEM_L_TBL, (int16_t) diff);

    } else {

        meml_gotten = s->state_short_len;
        reverse_memcpy(mem + CB_MEML - 1, decresidual + start_pos, meml_gotten);
        memset(mem, 0, (int16_t) (CB_MEML - meml_gotten) * 2);


        construct_vector(reverseDecresidual, encbits->cb_index, encbits->gain_index, mem + CB_MEML - ST_MEM_L_TBL, ST_MEM_L_TBL, diff);


        reverse_memcpy(&decresidual[start_pos - 1], reverseDecresidual, diff);
    }


    subcount = 1;


    Nfor = s->nsub - encbits->start - 1;

    if (Nfor > 0) {

        memset(mem, 0, (CB_MEML - STATE_LEN) * 2);
        memcpy(mem + CB_MEML - STATE_LEN, decresidual + (encbits->start - 1) * SUBL, STATE_LEN * 2);


        for (subframe = 0; subframe < Nfor; subframe++) {

            construct_vector(&decresidual[(encbits->start + 1 + subframe) * SUBL], encbits->cb_index + subcount * CB_NSTAGES, encbits->gain_index + subcount * CB_NSTAGES, mem, MEM_LF_TBL, SUBL);


            memmove(mem, mem + SUBL, (CB_MEML - SUBL) * sizeof(*mem));
            memcpy(mem + CB_MEML - SUBL, &decresidual[(encbits->start + 1 + subframe) * SUBL], SUBL * 2);

            subcount++;
        }

    }


    Nback = encbits->start - 1;

    if (Nback > 0) {

        meml_gotten = SUBL * (s->nsub + 1 - encbits->start);
        if (meml_gotten > CB_MEML) {
            meml_gotten = CB_MEML;
        }

        reverse_memcpy(mem + CB_MEML - 1, decresidual + (encbits->start - 1) * SUBL, meml_gotten);
        memset(mem, 0, (int16_t) (CB_MEML - meml_gotten) * 2);


        for (subframe = 0; subframe < Nback; subframe++) {

            construct_vector(&reverseDecresidual[subframe * SUBL], encbits->cb_index + subcount * CB_NSTAGES,
                        encbits->gain_index + subcount * CB_NSTAGES, mem, MEM_LF_TBL, SUBL);


            memmove(mem, mem + SUBL, (CB_MEML - SUBL) * sizeof(*mem));
            memcpy(mem + CB_MEML - SUBL, &reverseDecresidual[subframe * SUBL], SUBL * 2);

            subcount++;
        }


        reverse_memcpy(decresidual + SUBL * Nback - 1, reverseDecresidual, SUBL * Nback);
    }
}
