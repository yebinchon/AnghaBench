
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scale3x_uint32 ;


 int assert (int) ;
 int scale3x_32_def_border (int *,int const*,int const*,int const*,unsigned int) ;
 int scale3x_32_def_center (int *,int const*,int const*,int const*,unsigned int) ;

void scale3x_32_def(scale3x_uint32* dst0, scale3x_uint32* dst1, scale3x_uint32* dst2, const scale3x_uint32* src0, const scale3x_uint32* src1, const scale3x_uint32* src2, unsigned count)
{
 assert(count >= 2);

 scale3x_32_def_border(dst0, src0, src1, src2, count);
 scale3x_32_def_center(dst1, src0, src1, src2, count);
 scale3x_32_def_border(dst2, src2, src1, src0, count);
}
