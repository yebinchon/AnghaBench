
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scale2x_uint8 ;


 int assert (int) ;
 int scale2x_8_def_single (int *,int const*,int const*,int const*,unsigned int) ;

void scale2x_8_def(scale2x_uint8* dst0, scale2x_uint8* dst1, const scale2x_uint8* src0, const scale2x_uint8* src1, const scale2x_uint8* src2, unsigned count)
{
 assert(count >= 2);

 scale2x_8_def_single(dst0, src0, src1, src2, count);
 scale2x_8_def_single(dst1, src2, src1, src0, count);
}
