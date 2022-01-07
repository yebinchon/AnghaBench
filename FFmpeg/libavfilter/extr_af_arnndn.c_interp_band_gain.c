
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FRAME_SIZE_SHIFT ;
 int FREQ_SIZE ;
 int NB_BANDS ;
 int* eband5ms ;
 int memset (float*,int ,int) ;

__attribute__((used)) static void interp_band_gain(float *g, const float *bandE)
{
    memset(g, 0, sizeof(*g) * FREQ_SIZE);

    for (int i = 0; i < NB_BANDS - 1; i++) {
        const int band_size = (eband5ms[i + 1] - eband5ms[i]) << FRAME_SIZE_SHIFT;

        for (int j = 0; j < band_size; j++) {
            float frac = (float)j / band_size;

            g[(eband5ms[i] << FRAME_SIZE_SHIFT) + j] = (1.f - frac) * bandE[i] + frac * bandE[i + 1];
        }
    }
}
