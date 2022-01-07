
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* cbgain; int* cindex; scalar_t__* cbsign; } ;
struct TYPE_5__ {int bitrate; int* prev_g1; double last_codebook_gain; int erasure_count; TYPE_1__ frame; } ;
typedef TYPE_2__ QCELPContext ;


 int I_F_Q ;


 int RATE_OCTAVE ;
 int RATE_QUARTER ;
 int SILENCE ;
 int av_assert2 (int) ;
 int av_clip (int,int ,int) ;
 double* qcelp_g12ga ;

__attribute__((used)) static void decode_gain_and_index(QCELPContext *q, float *gain)
{
    int i, subframes_count, g1[16];
    float slope;

    if (q->bitrate >= RATE_QUARTER) {
        switch (q->bitrate) {
        case 129: subframes_count = 16; break;
        case 128: subframes_count = 4; break;
        default: subframes_count = 5;
        }
        for (i = 0; i < subframes_count; i++) {
            g1[i] = 4 * q->frame.cbgain[i];
            if (q->bitrate == 129 && !((i + 1) & 3)) {
                g1[i] += av_clip((g1[i - 1] + g1[i - 2] + g1[i - 3]) / 3 - 6, 0, 32);
            }

            gain[i] = qcelp_g12ga[g1[i]];

            if (q->frame.cbsign[i]) {
                gain[i] = -gain[i];
                q->frame.cindex[i] = (q->frame.cindex[i] - 89) & 127;
            }
        }

        q->prev_g1[0] = g1[i - 2];
        q->prev_g1[1] = g1[i - 1];
        q->last_codebook_gain = qcelp_g12ga[g1[i - 1]];

        if (q->bitrate == RATE_QUARTER) {

            gain[7] = gain[4];
            gain[6] = 0.4 * gain[3] + 0.6 * gain[4];
            gain[5] = gain[3];
            gain[4] = 0.8 * gain[2] + 0.2 * gain[3];
            gain[3] = 0.2 * gain[1] + 0.8 * gain[2];
            gain[2] = gain[1];
            gain[1] = 0.6 * gain[0] + 0.4 * gain[1];
        }
    } else if (q->bitrate != SILENCE) {
        if (q->bitrate == RATE_OCTAVE) {
            g1[0] = 2 * q->frame.cbgain[0] +
                    av_clip((q->prev_g1[0] + q->prev_g1[1]) / 2 - 5, 0, 54);
            subframes_count = 8;
        } else {
            av_assert2(q->bitrate == I_F_Q);

            g1[0] = q->prev_g1[1];
            switch (q->erasure_count) {
            case 1 : break;
            case 2 : g1[0] -= 1; break;
            case 3 : g1[0] -= 2; break;
            default: g1[0] -= 6;
            }
            if (g1[0] < 0)
                g1[0] = 0;
            subframes_count = 4;
        }

        slope = 0.5 * (qcelp_g12ga[g1[0]] - q->last_codebook_gain) / subframes_count;
        for (i = 1; i <= subframes_count; i++)
                gain[i - 1] = q->last_codebook_gain + slope * i;

        q->last_codebook_gain = gain[i - 2];
        q->prev_g1[0] = q->prev_g1[1];
        q->prev_g1[1] = g1[0];
    }
}
