
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scale2x_16_def (void*,void*,void const*,void const*,void const*,unsigned int) ;
 int scale2x_16_mmx (void*,void*,void const*,void const*,void const*,unsigned int) ;
 int scale2x_32_def (void*,void*,void const*,void const*,void const*,unsigned int) ;
 int scale2x_32_mmx (void*,void*,void const*,void const*,void const*,unsigned int) ;
 int scale2x_8_def (void*,void*,void const*,void const*,void const*,unsigned int) ;
 int scale2x_8_mmx (void*,void*,void const*,void const*,void const*,unsigned int) ;

__attribute__((used)) static inline void stage_scale2x(void* dst0, void* dst1, const void* src0, const void* src1, const void* src2, unsigned pixel, unsigned pixel_per_row)
{
 switch (pixel) {





  case 1 : scale2x_8_def(dst0, dst1, src0, src1, src2, pixel_per_row); break;
  case 2 : scale2x_16_def(dst0, dst1, src0, src1, src2, pixel_per_row); break;
  case 4 : scale2x_32_def(dst0, dst1, src0, src1, src2, pixel_per_row); break;

 }
}
