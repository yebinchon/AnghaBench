
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scale3x_uint8 ;


 int assert (int) ;
 int scale3x_8_def_border (int *,int const*,int const*,int const*,unsigned int) ;
 int scale3x_8_def_center (int *,int const*,int const*,int const*,unsigned int) ;

void scale3x_8_def(scale3x_uint8* dst0, scale3x_uint8* dst1, scale3x_uint8* dst2, const scale3x_uint8* src0, const scale3x_uint8* src1, const scale3x_uint8* src2, unsigned count)
{
 assert(count >= 2);

 scale3x_8_def_border(dst0, src0, src1, src2, count);
 scale3x_8_def_center(dst1, src0, src1, src2, count);
 scale3x_8_def_border(dst2, src2, src1, src0, count);
}
