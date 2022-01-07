
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** val; } ;
typedef TYPE_1__ uint8x8x2_t ;
typedef int uint8x8_t ;
typedef int stbi_uc ;
typedef int int16x8_t ;
typedef int __m128i ;


 int STBI_NOTUSED (int) ;
 int _mm_add_epi16 (int ,int ) ;
 int _mm_insert_epi16 (int ,int,int) ;
 int _mm_loadl_epi64 (int *) ;
 int _mm_packus_epi16 (int ,int ) ;
 int _mm_set1_epi16 (int) ;
 int _mm_setzero_si128 () ;
 int _mm_slli_epi16 (int ,int) ;
 int _mm_slli_si128 (int ,int) ;
 int _mm_srli_epi16 (int ,int) ;
 int _mm_srli_si128 (int ,int) ;
 int _mm_storeu_si128 (int *,int ) ;
 int _mm_sub_epi16 (int ,int ) ;
 int _mm_unpackhi_epi16 (int ,int ) ;
 int _mm_unpacklo_epi16 (int ,int ) ;
 int _mm_unpacklo_epi8 (int ,int ) ;
 int stbi__div16 (int) ;
 int stbi__div4 (int) ;
 int vaddq_s16 (int ,int ) ;
 int vextq_s16 (int ,int ,int) ;
 int vld1_u8 (int*) ;
 void* vqrshrun_n_s16 (int ,int) ;
 int vreinterpretq_s16_u16 (int ) ;
 int vsetq_lane_s16 (int,int ,int) ;
 int vshll_n_u8 (int ,int) ;
 int vshlq_n_s16 (int ,int) ;
 int vst2_u8 (int*,TYPE_1__) ;
 int vsubl_u8 (int ,int ) ;
 int vsubq_s16 (int ,int ) ;

__attribute__((used)) static stbi_uc *stbi__resample_row_hv_2_simd(stbi_uc *out, stbi_uc *in_near, stbi_uc *in_far, int w, int hs)
{

   int i=0,t0,t1;

   if (w == 1) {
      out[0] = out[1] = stbi__div4(3*in_near[0] + in_far[0] + 2);
      return out;
   }

   t1 = 3*in_near[0] + in_far[0];



   for (; i < ((w-1) & ~7); i += 8) {
      t1 = 3*in_near[i+7] + in_far[i+7];
   }

   t0 = t1;
   t1 = 3*in_near[i] + in_far[i];
   out[i*2] = stbi__div16(3*t1 + t0 + 8);

   for (++i; i < w; ++i) {
      t0 = t1;
      t1 = 3*in_near[i]+in_far[i];
      out[i*2-1] = stbi__div16(3*t0 + t1 + 8);
      out[i*2 ] = stbi__div16(3*t1 + t0 + 8);
   }
   out[w*2-1] = stbi__div4(t1+2);

   STBI_NOTUSED(hs);

   return out;
}
