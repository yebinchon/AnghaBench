
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nbf; int* hist; } ;
typedef TYPE_1__ sbc_plc_state_t ;
typedef int int16_t ;


 int SBC_FS ;
 int SBC_LHIST ;
 int SBC_OLAL ;
 int SBC_RT ;
 int* rcos ;

void sbc_plc_good_frame(sbc_plc_state_t *plc_state, int16_t *in, int16_t *out){
    int i = 0;

    if (plc_state->nbf > 0){
        for (i = 0; i < SBC_RT; i++){
            out[i] = plc_state->hist[SBC_LHIST + i];
        }

        for (i = SBC_RT; i < SBC_RT + SBC_OLAL; i++){
            out[i] = (int16_t)(plc_state->hist[SBC_LHIST + i] * rcos[i - SBC_RT] + in[i] * rcos[SBC_OLAL - 1 - i + SBC_RT]);
        }
    }

    for (; i < SBC_FS; i++){
        out[i] = in[i];
    }

    for (i = 0; i < SBC_FS; i++){
        plc_state->hist[SBC_LHIST + i] = out[i];
    }

    for (i = 0; i < SBC_LHIST; i++){
        plc_state->hist[i] = plc_state->hist[i + SBC_FS];
    }

    plc_state->nbf = 0;
}
