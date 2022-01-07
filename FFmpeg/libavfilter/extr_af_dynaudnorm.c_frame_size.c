
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lrint (double) ;

__attribute__((used)) static inline int frame_size(int sample_rate, int frame_len_msec)
{
    const int frame_size = lrint((double)sample_rate * (frame_len_msec / 1000.0));
    return frame_size + (frame_size % 2);
}
