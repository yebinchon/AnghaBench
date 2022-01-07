
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int yuvPlanartoyuy2_c (int const*,int const*,int const*,int *,int,int,int,int,int,int) ;

__attribute__((used)) static inline void yuv422ptoyuy2_c(const uint8_t *ysrc, const uint8_t *usrc,
                                   const uint8_t *vsrc, uint8_t *dst,
                                   int width, int height, int lumStride,
                                   int chromStride, int dstStride)
{
    yuvPlanartoyuy2_c(ysrc, usrc, vsrc, dst, width, height, lumStride,
                      chromStride, dstStride, 1);
}
