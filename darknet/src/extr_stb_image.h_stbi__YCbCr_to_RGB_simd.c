
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** val; } ;
typedef TYPE_1__ uint8x8x4_t ;
typedef void* uint8x8_t ;
typedef int stbi_uc ;
typedef int int8x8_t ;
typedef int int16x8_t ;
typedef int __m128i ;


 int _mm_add_epi16 (int ,int ) ;
 int _mm_loadl_epi64 (int *) ;
 int _mm_mulhi_epi16 (int ,int ) ;
 int _mm_packus_epi16 (int ,int ) ;
 int _mm_set1_epi16 (int) ;
 int _mm_set1_epi8 (char) ;
 int _mm_setzero_si128 () ;
 int _mm_srai_epi16 (int ,int) ;
 int _mm_srli_epi16 (int ,int) ;
 int _mm_storeu_si128 (int *,int ) ;
 int _mm_unpackhi_epi16 (int ,int ) ;
 int _mm_unpackhi_epi8 (int ,int ) ;
 int _mm_unpacklo_epi16 (int ,int ) ;
 int _mm_unpacklo_epi8 (int ,int ) ;
 int _mm_xor_si128 (int ,int ) ;
 int stbi__float2fixed (float) ;
 int vaddq_s16 (int ,int ) ;
 void* vdup_n_u8 (int) ;
 int vdupq_n_s16 (short) ;
 void* vld1_u8 (int const*) ;
 int vqdmulhq_s16 (int ,int ) ;
 void* vqrshrun_n_s16 (int ,int) ;
 int vreinterpret_s8_u8 (int ) ;
 int vreinterpretq_s16_u16 (int ) ;
 int vshll_n_s8 (int ,int) ;
 int vshll_n_u8 (void*,int) ;
 int vst4_u8 (int*,TYPE_1__) ;
 int vsub_u8 (void*,void*) ;

__attribute__((used)) static void stbi__YCbCr_to_RGB_simd(stbi_uc *out, stbi_uc const *y, stbi_uc const *pcb, stbi_uc const *pcr, int count, int step)
{
   int i = 0;
   for (; i < count; ++i) {
      int y_fixed = (y[i] << 20) + (1<<19);
      int r,g,b;
      int cr = pcr[i] - 128;
      int cb = pcb[i] - 128;
      r = y_fixed + cr* stbi__float2fixed(1.40200f);
      g = y_fixed + cr*-stbi__float2fixed(0.71414f) + ((cb*-stbi__float2fixed(0.34414f)) & 0xffff0000);
      b = y_fixed + cb* stbi__float2fixed(1.77200f);
      r >>= 20;
      g >>= 20;
      b >>= 20;
      if ((unsigned) r > 255) { if (r < 0) r = 0; else r = 255; }
      if ((unsigned) g > 255) { if (g < 0) g = 0; else g = 255; }
      if ((unsigned) b > 255) { if (b < 0) b = 0; else b = 255; }
      out[0] = (stbi_uc)r;
      out[1] = (stbi_uc)g;
      out[2] = (stbi_uc)b;
      out[3] = 255;
      out += step;
   }
}
