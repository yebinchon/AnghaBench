
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void stbiw__jpg_DCT(float *d0p, float *d1p, float *d2p, float *d3p, float *d4p, float *d5p, float *d6p, float *d7p) {
   float d0 = *d0p, d1 = *d1p, d2 = *d2p, d3 = *d3p, d4 = *d4p, d5 = *d5p, d6 = *d6p, d7 = *d7p;
   float z1, z2, z3, z4, z5, z11, z13;

   float tmp0 = d0 + d7;
   float tmp7 = d0 - d7;
   float tmp1 = d1 + d6;
   float tmp6 = d1 - d6;
   float tmp2 = d2 + d5;
   float tmp5 = d2 - d5;
   float tmp3 = d3 + d4;
   float tmp4 = d3 - d4;


   float tmp10 = tmp0 + tmp3;
   float tmp13 = tmp0 - tmp3;
   float tmp11 = tmp1 + tmp2;
   float tmp12 = tmp1 - tmp2;

   d0 = tmp10 + tmp11;
   d4 = tmp10 - tmp11;

   z1 = (tmp12 + tmp13) * 0.707106781f;
   d2 = tmp13 + z1;
   d6 = tmp13 - z1;


   tmp10 = tmp4 + tmp5;
   tmp11 = tmp5 + tmp6;
   tmp12 = tmp6 + tmp7;


   z5 = (tmp10 - tmp12) * 0.382683433f;
   z2 = tmp10 * 0.541196100f + z5;
   z4 = tmp12 * 1.306562965f + z5;
   z3 = tmp11 * 0.707106781f;

   z11 = tmp7 + z3;
   z13 = tmp7 - z3;

   *d5p = z13 + z2;
   *d3p = z13 - z2;
   *d1p = z11 + z4;
   *d7p = z11 - z4;

   *d0p = d0; *d2p = d2; *d4p = d4; *d6p = d6;
}
