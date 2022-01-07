
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stage_scale2x (void*,void*,void const*,void const*,void const*,unsigned int,int) ;

__attribute__((used)) static inline void stage_scale4x(void* dst0, void* dst1, void* dst2, void* dst3, const void* src0, const void* src1, const void* src2, const void* src3, unsigned pixel, unsigned pixel_per_row)
{
 stage_scale2x(dst0, dst1, src0, src1, src2, pixel, 2 * pixel_per_row);
 stage_scale2x(dst2, dst3, src1, src2, src3, pixel, 2 * pixel_per_row);
}
