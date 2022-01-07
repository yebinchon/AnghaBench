
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int av_clip_int16 (int) ;

__attribute__((used)) static void dss_sp_gen_exc(int32_t *vector, int32_t *prev_exc,
                           int pitch_lag, int gain)
{
    int i;



    if (pitch_lag < 72)
        for (i = 0; i < 72; i++)
            vector[i] = prev_exc[pitch_lag - i % pitch_lag];
    else
        for (i = 0; i < 72; i++)
            vector[i] = prev_exc[pitch_lag - i];

    for (i = 0; i < 72; i++) {
        int tmp = gain * vector[i] >> 11;
        vector[i] = av_clip_int16(tmp);
    }
}
