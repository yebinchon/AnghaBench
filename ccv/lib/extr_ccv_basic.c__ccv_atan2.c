
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __m128 ;


 double CCV_PI ;
 int _mm_add_ps (int ,int ) ;
 int _mm_and_ps (int ,int ) ;
 int _mm_andnot_ps (int ,int ) ;
 int _mm_cmplt_ps (int ,int ) ;
 int _mm_div_ps (int ,int ) ;
 int _mm_loadu_ps (float*) ;
 int _mm_max_ps (int ,int ) ;
 int _mm_min_ps (int ,int ) ;
 int _mm_mul_ps (int ,int ) ;
 int _mm_or_ps (int ,int ) ;
 int _mm_set1_ps (float) ;
 int _mm_setzero_ps () ;
 int _mm_sqrt_ps (int ) ;
 int _mm_storeu_ps (float*,int ) ;
 int _mm_sub_ps (int ,int ) ;
 int _mm_xor_ps (int ,int ) ;
 float sqrtf (float) ;

__attribute__((used)) static void _ccv_atan2(float* x, float* y, float* angle, float* mag, int len)
{
 int i = 0;
 float scale = (float)(180.0 / CCV_PI);
 for(; i < len; i++)
 {
  float xf = x[i], yf = y[i];
  float a, x2 = xf * xf, y2 = yf * yf;
  if(y2 <= x2)
   a = xf * yf / (x2 + 0.28f * y2 + (float)1e-6) + (float)(xf < 0 ? CCV_PI : yf >= 0 ? 0 : CCV_PI * 2);
  else
   a = (float)(yf >= 0 ? CCV_PI * 0.5 : CCV_PI * 1.5) - xf * yf / (y2 + 0.28f * x2 + (float)1e-6);
  angle[i] = a * scale;
  mag[i] = sqrtf(x2 + y2);
 }
}
