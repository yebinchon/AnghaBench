
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_6__ {int* res; int** scf_idx; scalar_t__ msf; } ;
struct TYPE_5__ {float*** sb_samples; float** Q; TYPE_2__* bands; } ;
typedef TYPE_1__ MPCContext ;
typedef TYPE_2__ Band ;


 int SAMPLES_PER_BAND ;
 int memset (float***,int ,int) ;
 float* mpc_CC ;
 float* mpc_SCF ;
 int mpc_synth (TYPE_1__*,int **,int) ;

void ff_mpc_dequantize_and_synth(MPCContext * c, int maxband, int16_t **out,
                                 int channels)
{
    int i, j, ch;
    Band *bands = c->bands;
    int off;
    float mul;


    memset(c->sb_samples, 0, sizeof(c->sb_samples));
    off = 0;
    for(i = 0; i <= maxband; i++, off += SAMPLES_PER_BAND){
        for(ch = 0; ch < 2; ch++){
            if(bands[i].res[ch]){
                j = 0;
                mul = (mpc_CC+1)[bands[i].res[ch]] * mpc_SCF[bands[i].scf_idx[ch][0] & 0xFF];
                for(; j < 12; j++)
                    c->sb_samples[ch][j][i] = mul * c->Q[ch][j + off];
                mul = (mpc_CC+1)[bands[i].res[ch]] * mpc_SCF[bands[i].scf_idx[ch][1] & 0xFF];
                for(; j < 24; j++)
                    c->sb_samples[ch][j][i] = mul * c->Q[ch][j + off];
                mul = (mpc_CC+1)[bands[i].res[ch]] * mpc_SCF[bands[i].scf_idx[ch][2] & 0xFF];
                for(; j < 36; j++)
                    c->sb_samples[ch][j][i] = mul * c->Q[ch][j + off];
            }
        }
        if(bands[i].msf){
            int t1, t2;
            for(j = 0; j < SAMPLES_PER_BAND; j++){
                t1 = c->sb_samples[0][j][i];
                t2 = c->sb_samples[1][j][i];
                c->sb_samples[0][j][i] = t1 + t2;
                c->sb_samples[1][j][i] = t1 - t2;
            }
        }
    }

    mpc_synth(c, out, channels);
}
