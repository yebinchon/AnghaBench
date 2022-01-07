
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int FRAME_LEN ;
 int PITCH_MAX ;
 int av_memcpy_backptr (int *,int,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void residual_interp(int16_t *buf, int16_t *out, int lag,
                            int gain, int *rseed)
{
    int i;
    if (lag) {
        int16_t *vector_ptr = buf + PITCH_MAX;

        for (i = 0; i < lag; i++)
            out[i] = vector_ptr[i - lag] * 3 >> 2;
        av_memcpy_backptr((uint8_t*)(out + lag), lag * sizeof(*out),
                          (FRAME_LEN - lag) * sizeof(*out));
    } else {
        for (i = 0; i < FRAME_LEN; i++) {
            *rseed = (int16_t)(*rseed * 521 + 259);
            out[i] = gain * *rseed >> 15;
        }
        memset(buf, 0, (FRAME_LEN + PITCH_MAX) * sizeof(*buf));
    }
}
