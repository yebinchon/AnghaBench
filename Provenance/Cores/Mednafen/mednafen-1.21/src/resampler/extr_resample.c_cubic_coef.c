
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float spx_word16_t ;



__attribute__((used)) static void cubic_coef(spx_word16_t frac, spx_word16_t interp[4])
{


   interp[0] = -0.16667f*frac + 0.16667f*frac*frac*frac;
   interp[1] = frac + 0.5f*frac*frac - 0.5f*frac*frac*frac;

   interp[3] = -0.33333f*frac + 0.5f*frac*frac - 0.16667f*frac*frac*frac;

   interp[2] = 1.-interp[0]-interp[1]-interp[3];
}
