
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 scalar_t__ ALPHA_COMPAND_DC_OFFSET ;
 int ALPHA_COMPAND_GAIN ;
 int av_clip_uintp2 (int,int) ;

__attribute__((used)) static inline void process_alpha(int16_t *alpha, int width)
{
    int i, channel;
    for (i = 0; i < width; i++) {
        channel = alpha[i];
        channel -= ALPHA_COMPAND_DC_OFFSET;
        channel <<= 3;
        channel *= ALPHA_COMPAND_GAIN;
        channel >>= 16;
        channel = av_clip_uintp2(channel, 12);
        alpha[i] = channel;
    }
}
