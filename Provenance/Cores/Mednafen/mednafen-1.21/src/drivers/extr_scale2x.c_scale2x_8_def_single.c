
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ scale2x_uint8 ;


 int assert (int) ;

__attribute__((used)) static inline void scale2x_8_def_single(scale2x_uint8* __restrict__ dst, const scale2x_uint8* __restrict__ src0, const scale2x_uint8* __restrict__ src1, const scale2x_uint8* __restrict__ src2, unsigned count)
{
 assert(count >= 2);


 dst[0] = src1[0];
 if (src1[1] == src0[0] && src2[0] != src0[0])
  dst[1] = src0[0];
 else
  dst[1] = src1[0];
 ++src0;
 ++src1;
 ++src2;
 dst += 2;


 count -= 2;
 while (count) {
  if (src0[0] != src2[0] && src1[-1] != src1[1]) {
   dst[0] = src1[-1] == src0[0] ? src0[0] : src1[0];
   dst[1] = src1[1] == src0[0] ? src0[0] : src1[0];
  } else {
   dst[0] = src1[0];
   dst[1] = src1[0];
  }

  ++src0;
  ++src1;
  ++src2;
  dst += 2;
  --count;
 }


 if (src1[-1] == src0[0] && src2[0] != src0[0])
  dst[0] = src0[0];
 else
  dst[0] = src1[0];
 dst[1] = src1[0];
}
