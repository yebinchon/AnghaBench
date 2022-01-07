
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef enum Mode { ____Placeholder_Mode } Mode ;


 int AMRWB_SFR_SIZE ;
 int FFABS (int) ;
 int decode_1p_track (int*,scalar_t__ const,int,int) ;
 int decode_2p_track (int*,scalar_t__ const,int,int) ;
 int decode_3p_track (int*,scalar_t__ const,int,int) ;
 int decode_4p_track (int*,int,int,int) ;
 int decode_5p_track (int*,int,int,int) ;
 int decode_6p_track (int*,int,int,int) ;
 int memset (float*,int ,int) ;
 int** pulses_nb_per_mode_tr ;

__attribute__((used)) static void decode_fixed_vector(float *fixed_vector, const uint16_t *pulse_hi,
                                const uint16_t *pulse_lo, const enum Mode mode)
{


    int sig_pos[4][6];
    int spacing = (mode == 129) ? 2 : 4;
    int i, j;

    switch (mode) {
    case 129:
        for (i = 0; i < 2; i++)
            decode_1p_track(sig_pos[i], pulse_lo[i], 5, 1);
        break;
    case 128:
        for (i = 0; i < 4; i++)
            decode_1p_track(sig_pos[i], pulse_lo[i], 4, 1);
        break;
    case 136:
        for (i = 0; i < 4; i++)
            decode_2p_track(sig_pos[i], pulse_lo[i], 4, 1);
        break;
    case 135:
        for (i = 0; i < 2; i++)
            decode_3p_track(sig_pos[i], pulse_lo[i], 4, 1);
        for (i = 2; i < 4; i++)
            decode_2p_track(sig_pos[i], pulse_lo[i], 4, 1);
        break;
    case 134:
        for (i = 0; i < 4; i++)
            decode_3p_track(sig_pos[i], pulse_lo[i], 4, 1);
        break;
    case 133:
        for (i = 0; i < 4; i++)
            decode_4p_track(sig_pos[i], (int) pulse_lo[i] +
                           ((int) pulse_hi[i] << 14), 4, 1);
        break;
    case 132:
        for (i = 0; i < 2; i++)
            decode_5p_track(sig_pos[i], (int) pulse_lo[i] +
                           ((int) pulse_hi[i] << 10), 4, 1);
        for (i = 2; i < 4; i++)
            decode_4p_track(sig_pos[i], (int) pulse_lo[i] +
                           ((int) pulse_hi[i] << 14), 4, 1);
        break;
    case 131:
    case 130:
        for (i = 0; i < 4; i++)
            decode_6p_track(sig_pos[i], (int) pulse_lo[i] +
                           ((int) pulse_hi[i] << 11), 4, 1);
        break;
    }

    memset(fixed_vector, 0, sizeof(float) * AMRWB_SFR_SIZE);

    for (i = 0; i < 4; i++)
        for (j = 0; j < pulses_nb_per_mode_tr[mode][i]; j++) {
            int pos = (FFABS(sig_pos[i][j]) - 1) * spacing + i;

            fixed_vector[pos] += sig_pos[i][j] < 0 ? -1.0 : 1.0;
        }
}
