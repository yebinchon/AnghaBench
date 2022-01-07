
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int av_clip_uintp2 (int,int) ;

__attribute__((used)) static inline void interlaced_vertical_filter(int16_t *output, int16_t *low, int16_t *high,
                         int width, int linesize, int plane)
{
    int i;
    int16_t even, odd;
    for (i = 0; i < width; i++) {
        even = (low[i] - high[i])/2;
        odd = (low[i] + high[i])/2;
        output[i] = av_clip_uintp2(even, 10);
        output[i + linesize] = av_clip_uintp2(odd, 10);
    }
}
