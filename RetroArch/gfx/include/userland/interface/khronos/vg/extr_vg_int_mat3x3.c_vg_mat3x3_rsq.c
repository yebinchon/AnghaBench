
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float** m; } ;
typedef TYPE_1__ VG_MAT3X3_T ;


 scalar_t__ EPS ;
 float _maxf (float,float) ;
 scalar_t__ absf_ (float) ;
 float atan2_ (float,float) ;
 float sqrt_ (float) ;

void vg_mat3x3_rsq(const VG_MAT3X3_T *a,
   float *r, float *s0, float *s1)
{
   float b = (a->m[0][0] * a->m[0][0]) + (a->m[0][1] * a->m[0][1]);
   float c = (a->m[0][0] * a->m[1][0]) + (a->m[0][1] * a->m[1][1]);

   float e = (a->m[1][0] * a->m[1][0]) + (a->m[1][1] * a->m[1][1]);

   float bpe = b + e;
   float bme = b - e;
   float t = sqrt_((bme * bme) + (4.0f * c * c));
   float v = (bpe + t) * 0.5f;
   if (s0) {
      *s0 = sqrt_(v);
   }
   if (s1) {
      *s1 = sqrt_(

         _maxf(bpe - t, 0.0f) * 0.5f);
   }





   if (r) {

      float x = (v - e) + c;
      float y = (v - b) + c;
      *r = ((absf_(x) < EPS) && (absf_(y) < EPS)) ? 0.0f : atan2_(y, x);
   }
}
