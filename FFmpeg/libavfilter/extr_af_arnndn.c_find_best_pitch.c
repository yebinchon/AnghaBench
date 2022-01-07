
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float FFMAX (int,float) ;

__attribute__((used)) static void find_best_pitch(float *xcorr, float *y, int len,
                            int max_pitch, int *best_pitch)
{
    float best_num[2];
    float best_den[2];
    float Syy = 1.f;

    best_num[0] = -1;
    best_num[1] = -1;
    best_den[0] = 0;
    best_den[1] = 0;
    best_pitch[0] = 0;
    best_pitch[1] = 1;

    for (int j = 0; j < len; j++)
        Syy += y[j] * y[j];

    for (int i = 0; i < max_pitch; i++) {
        if (xcorr[i]>0) {
            float num;
            float xcorr16;

            xcorr16 = xcorr[i];


            xcorr16 *= 1e-12f;
            num = xcorr16 * xcorr16;
            if ((num * best_den[1]) > (best_num[1] * Syy)) {
                if ((num * best_den[0]) > (best_num[0] * Syy)) {
                    best_num[1] = best_num[0];
                    best_den[1] = best_den[0];
                    best_pitch[1] = best_pitch[0];
                    best_num[0] = num;
                    best_den[0] = Syy;
                    best_pitch[0] = i;
                } else {
                    best_num[1] = num;
                    best_den[1] = Syy;
                    best_pitch[1] = i;
                }
            }
        }
        Syy += y[i+len]*y[i+len] - y[i] * y[i];
        Syy = FFMAX(1, Syy);
    }
}
