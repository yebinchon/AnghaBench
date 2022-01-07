
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi_uc ;
typedef int __m128i ;


 int _mm_load_si128 (int const*) ;
 int _mm_packus_epi16 (int ,int ) ;
 int _mm_set1_epi32 (int) ;
 int _mm_shuffle_epi32 (int ,int) ;
 int _mm_storel_epi64 (int *,int ) ;
 int dct_const (scalar_t__,scalar_t__) ;
 int dct_interleave16 (int ,int ) ;
 int dct_interleave8 (int ,int ) ;
 int dct_pass (int ,int) ;
 scalar_t__ stbi__f2f (float) ;

__attribute__((used)) static void stbi__idct_simd(stbi_uc *out, int out_stride, short data[64])
{

   __m128i row0, row1, row2, row3, row4, row5, row6, row7;
   __m128i tmp;
   __m128i rot0_0 = _mm_setr_epi16((stbi__f2f(0.5411961f)),(stbi__f2f(0.5411961f) + stbi__f2f(-1.847759065f)),(stbi__f2f(0.5411961f)),(stbi__f2f(0.5411961f) + stbi__f2f(-1.847759065f)),(stbi__f2f(0.5411961f)),(stbi__f2f(0.5411961f) + stbi__f2f(-1.847759065f)),(stbi__f2f(0.5411961f)),(stbi__f2f(0.5411961f) + stbi__f2f(-1.847759065f)));
   __m128i rot0_1 = _mm_setr_epi16((stbi__f2f(0.5411961f) + stbi__f2f( 0.765366865f)),(stbi__f2f(0.5411961f)),(stbi__f2f(0.5411961f) + stbi__f2f( 0.765366865f)),(stbi__f2f(0.5411961f)),(stbi__f2f(0.5411961f) + stbi__f2f( 0.765366865f)),(stbi__f2f(0.5411961f)),(stbi__f2f(0.5411961f) + stbi__f2f( 0.765366865f)),(stbi__f2f(0.5411961f)));
   __m128i rot1_0 = _mm_setr_epi16((stbi__f2f(1.175875602f) + stbi__f2f(-0.899976223f)),(stbi__f2f(1.175875602f)),(stbi__f2f(1.175875602f) + stbi__f2f(-0.899976223f)),(stbi__f2f(1.175875602f)),(stbi__f2f(1.175875602f) + stbi__f2f(-0.899976223f)),(stbi__f2f(1.175875602f)),(stbi__f2f(1.175875602f) + stbi__f2f(-0.899976223f)),(stbi__f2f(1.175875602f)));
   __m128i rot1_1 = _mm_setr_epi16((stbi__f2f(1.175875602f)),(stbi__f2f(1.175875602f) + stbi__f2f(-2.562915447f)),(stbi__f2f(1.175875602f)),(stbi__f2f(1.175875602f) + stbi__f2f(-2.562915447f)),(stbi__f2f(1.175875602f)),(stbi__f2f(1.175875602f) + stbi__f2f(-2.562915447f)),(stbi__f2f(1.175875602f)),(stbi__f2f(1.175875602f) + stbi__f2f(-2.562915447f)));
   __m128i rot2_0 = _mm_setr_epi16((stbi__f2f(-1.961570560f) + stbi__f2f( 0.298631336f)),(stbi__f2f(-1.961570560f)),(stbi__f2f(-1.961570560f) + stbi__f2f( 0.298631336f)),(stbi__f2f(-1.961570560f)),(stbi__f2f(-1.961570560f) + stbi__f2f( 0.298631336f)),(stbi__f2f(-1.961570560f)),(stbi__f2f(-1.961570560f) + stbi__f2f( 0.298631336f)),(stbi__f2f(-1.961570560f)));
   __m128i rot2_1 = _mm_setr_epi16((stbi__f2f(-1.961570560f)),(stbi__f2f(-1.961570560f) + stbi__f2f( 3.072711026f)),(stbi__f2f(-1.961570560f)),(stbi__f2f(-1.961570560f) + stbi__f2f( 3.072711026f)),(stbi__f2f(-1.961570560f)),(stbi__f2f(-1.961570560f) + stbi__f2f( 3.072711026f)),(stbi__f2f(-1.961570560f)),(stbi__f2f(-1.961570560f) + stbi__f2f( 3.072711026f)));
   __m128i rot3_0 = _mm_setr_epi16((stbi__f2f(-0.390180644f) + stbi__f2f( 2.053119869f)),(stbi__f2f(-0.390180644f)),(stbi__f2f(-0.390180644f) + stbi__f2f( 2.053119869f)),(stbi__f2f(-0.390180644f)),(stbi__f2f(-0.390180644f) + stbi__f2f( 2.053119869f)),(stbi__f2f(-0.390180644f)),(stbi__f2f(-0.390180644f) + stbi__f2f( 2.053119869f)),(stbi__f2f(-0.390180644f)));
   __m128i rot3_1 = _mm_setr_epi16((stbi__f2f(-0.390180644f)),(stbi__f2f(-0.390180644f) + stbi__f2f( 1.501321110f)),(stbi__f2f(-0.390180644f)),(stbi__f2f(-0.390180644f) + stbi__f2f( 1.501321110f)),(stbi__f2f(-0.390180644f)),(stbi__f2f(-0.390180644f) + stbi__f2f( 1.501321110f)),(stbi__f2f(-0.390180644f)),(stbi__f2f(-0.390180644f) + stbi__f2f( 1.501321110f)));


   __m128i bias_0 = _mm_set1_epi32(512);
   __m128i bias_1 = _mm_set1_epi32(65536 + (128<<17));


   row0 = _mm_load_si128((const __m128i *) (data + 0*8));
   row1 = _mm_load_si128((const __m128i *) (data + 1*8));
   row2 = _mm_load_si128((const __m128i *) (data + 2*8));
   row3 = _mm_load_si128((const __m128i *) (data + 3*8));
   row4 = _mm_load_si128((const __m128i *) (data + 4*8));
   row5 = _mm_load_si128((const __m128i *) (data + 5*8));
   row6 = _mm_load_si128((const __m128i *) (data + 6*8));
   row7 = _mm_load_si128((const __m128i *) (data + 7*8));


   { __m128i rot0_0lo = _mm_unpacklo_epi16((row2),(row6)); __m128i rot0_0hi = _mm_unpackhi_epi16((row2),(row6)); __m128i t2e_l = _mm_madd_epi16(rot0_0lo, rot0_0); __m128i t2e_h = _mm_madd_epi16(rot0_0hi, rot0_0); __m128i t3e_l = _mm_madd_epi16(rot0_0lo, rot0_1); __m128i t3e_h = _mm_madd_epi16(rot0_0hi, rot0_1); __m128i sum04 = _mm_add_epi16(row0, row4); __m128i dif04 = _mm_sub_epi16(row0, row4); __m128i t0e_l = _mm_srai_epi32(_mm_unpacklo_epi16(_mm_setzero_si128(), (sum04)), 4); __m128i t0e_h = _mm_srai_epi32(_mm_unpackhi_epi16(_mm_setzero_si128(), (sum04)), 4); __m128i t1e_l = _mm_srai_epi32(_mm_unpacklo_epi16(_mm_setzero_si128(), (dif04)), 4); __m128i t1e_h = _mm_srai_epi32(_mm_unpackhi_epi16(_mm_setzero_si128(), (dif04)), 4); __m128i x0_l = _mm_add_epi32(t0e_l, t3e_l); __m128i x0_h = _mm_add_epi32(t0e_h, t3e_h); __m128i x3_l = _mm_sub_epi32(t0e_l, t3e_l); __m128i x3_h = _mm_sub_epi32(t0e_h, t3e_h); __m128i x1_l = _mm_add_epi32(t1e_l, t2e_l); __m128i x1_h = _mm_add_epi32(t1e_h, t2e_h); __m128i x2_l = _mm_sub_epi32(t1e_l, t2e_l); __m128i x2_h = _mm_sub_epi32(t1e_h, t2e_h); __m128i rot2_0lo = _mm_unpacklo_epi16((row7),(row3)); __m128i rot2_0hi = _mm_unpackhi_epi16((row7),(row3)); __m128i y0o_l = _mm_madd_epi16(rot2_0lo, rot2_0); __m128i y0o_h = _mm_madd_epi16(rot2_0hi, rot2_0); __m128i y2o_l = _mm_madd_epi16(rot2_0lo, rot2_1); __m128i y2o_h = _mm_madd_epi16(rot2_0hi, rot2_1); __m128i rot3_0lo = _mm_unpacklo_epi16((row5),(row1)); __m128i rot3_0hi = _mm_unpackhi_epi16((row5),(row1)); __m128i y1o_l = _mm_madd_epi16(rot3_0lo, rot3_0); __m128i y1o_h = _mm_madd_epi16(rot3_0hi, rot3_0); __m128i y3o_l = _mm_madd_epi16(rot3_0lo, rot3_1); __m128i y3o_h = _mm_madd_epi16(rot3_0hi, rot3_1); __m128i sum17 = _mm_add_epi16(row1, row7); __m128i sum35 = _mm_add_epi16(row3, row5); __m128i rot1_0lo = _mm_unpacklo_epi16((sum17),(sum35)); __m128i rot1_0hi = _mm_unpackhi_epi16((sum17),(sum35)); __m128i y4o_l = _mm_madd_epi16(rot1_0lo, rot1_0); __m128i y4o_h = _mm_madd_epi16(rot1_0hi, rot1_0); __m128i y5o_l = _mm_madd_epi16(rot1_0lo, rot1_1); __m128i y5o_h = _mm_madd_epi16(rot1_0hi, rot1_1); __m128i x4_l = _mm_add_epi32(y0o_l, y4o_l); __m128i x4_h = _mm_add_epi32(y0o_h, y4o_h); __m128i x5_l = _mm_add_epi32(y1o_l, y5o_l); __m128i x5_h = _mm_add_epi32(y1o_h, y5o_h); __m128i x6_l = _mm_add_epi32(y2o_l, y5o_l); __m128i x6_h = _mm_add_epi32(y2o_h, y5o_h); __m128i x7_l = _mm_add_epi32(y3o_l, y4o_l); __m128i x7_h = _mm_add_epi32(y3o_h, y4o_h); { __m128i abiased_l = _mm_add_epi32(x0_l, bias_0); __m128i abiased_h = _mm_add_epi32(x0_h, bias_0); __m128i sum_l = _mm_add_epi32(abiased_l, x7_l); __m128i sum_h = _mm_add_epi32(abiased_h, x7_h); __m128i dif_l = _mm_sub_epi32(abiased_l, x7_l); __m128i dif_h = _mm_sub_epi32(abiased_h, x7_h); row0 = _mm_packs_epi32(_mm_srai_epi32(sum_l, 10), _mm_srai_epi32(sum_h, 10)); row7 = _mm_packs_epi32(_mm_srai_epi32(dif_l, 10), _mm_srai_epi32(dif_h, 10)); }; { __m128i abiased_l = _mm_add_epi32(x1_l, bias_0); __m128i abiased_h = _mm_add_epi32(x1_h, bias_0); __m128i sum_l = _mm_add_epi32(abiased_l, x6_l); __m128i sum_h = _mm_add_epi32(abiased_h, x6_h); __m128i dif_l = _mm_sub_epi32(abiased_l, x6_l); __m128i dif_h = _mm_sub_epi32(abiased_h, x6_h); row1 = _mm_packs_epi32(_mm_srai_epi32(sum_l, 10), _mm_srai_epi32(sum_h, 10)); row6 = _mm_packs_epi32(_mm_srai_epi32(dif_l, 10), _mm_srai_epi32(dif_h, 10)); }; { __m128i abiased_l = _mm_add_epi32(x2_l, bias_0); __m128i abiased_h = _mm_add_epi32(x2_h, bias_0); __m128i sum_l = _mm_add_epi32(abiased_l, x5_l); __m128i sum_h = _mm_add_epi32(abiased_h, x5_h); __m128i dif_l = _mm_sub_epi32(abiased_l, x5_l); __m128i dif_h = _mm_sub_epi32(abiased_h, x5_h); row2 = _mm_packs_epi32(_mm_srai_epi32(sum_l, 10), _mm_srai_epi32(sum_h, 10)); row5 = _mm_packs_epi32(_mm_srai_epi32(dif_l, 10), _mm_srai_epi32(dif_h, 10)); }; { __m128i abiased_l = _mm_add_epi32(x3_l, bias_0); __m128i abiased_h = _mm_add_epi32(x3_h, bias_0); __m128i sum_l = _mm_add_epi32(abiased_l, x4_l); __m128i sum_h = _mm_add_epi32(abiased_h, x4_h); __m128i dif_l = _mm_sub_epi32(abiased_l, x4_l); __m128i dif_h = _mm_sub_epi32(abiased_h, x4_h); row3 = _mm_packs_epi32(_mm_srai_epi32(sum_l, 10), _mm_srai_epi32(sum_h, 10)); row4 = _mm_packs_epi32(_mm_srai_epi32(dif_l, 10), _mm_srai_epi32(dif_h, 10)); }; };

   {

      tmp = row0; row0 = _mm_unpacklo_epi16(row0, row4); row4 = _mm_unpackhi_epi16(tmp, row4);
      tmp = row1; row1 = _mm_unpacklo_epi16(row1, row5); row5 = _mm_unpackhi_epi16(tmp, row5);
      tmp = row2; row2 = _mm_unpacklo_epi16(row2, row6); row6 = _mm_unpackhi_epi16(tmp, row6);
      tmp = row3; row3 = _mm_unpacklo_epi16(row3, row7); row7 = _mm_unpackhi_epi16(tmp, row7);


      tmp = row0; row0 = _mm_unpacklo_epi16(row0, row2); row2 = _mm_unpackhi_epi16(tmp, row2);
      tmp = row1; row1 = _mm_unpacklo_epi16(row1, row3); row3 = _mm_unpackhi_epi16(tmp, row3);
      tmp = row4; row4 = _mm_unpacklo_epi16(row4, row6); row6 = _mm_unpackhi_epi16(tmp, row6);
      tmp = row5; row5 = _mm_unpacklo_epi16(row5, row7); row7 = _mm_unpackhi_epi16(tmp, row7);


      tmp = row0; row0 = _mm_unpacklo_epi16(row0, row1); row1 = _mm_unpackhi_epi16(tmp, row1);
      tmp = row2; row2 = _mm_unpacklo_epi16(row2, row3); row3 = _mm_unpackhi_epi16(tmp, row3);
      tmp = row4; row4 = _mm_unpacklo_epi16(row4, row5); row5 = _mm_unpackhi_epi16(tmp, row5);
      tmp = row6; row6 = _mm_unpacklo_epi16(row6, row7); row7 = _mm_unpackhi_epi16(tmp, row7);
   }


   { __m128i rot0_0lo = _mm_unpacklo_epi16((row2),(row6)); __m128i rot0_0hi = _mm_unpackhi_epi16((row2),(row6)); __m128i t2e_l = _mm_madd_epi16(rot0_0lo, rot0_0); __m128i t2e_h = _mm_madd_epi16(rot0_0hi, rot0_0); __m128i t3e_l = _mm_madd_epi16(rot0_0lo, rot0_1); __m128i t3e_h = _mm_madd_epi16(rot0_0hi, rot0_1); __m128i sum04 = _mm_add_epi16(row0, row4); __m128i dif04 = _mm_sub_epi16(row0, row4); __m128i t0e_l = _mm_srai_epi32(_mm_unpacklo_epi16(_mm_setzero_si128(), (sum04)), 4); __m128i t0e_h = _mm_srai_epi32(_mm_unpackhi_epi16(_mm_setzero_si128(), (sum04)), 4); __m128i t1e_l = _mm_srai_epi32(_mm_unpacklo_epi16(_mm_setzero_si128(), (dif04)), 4); __m128i t1e_h = _mm_srai_epi32(_mm_unpackhi_epi16(_mm_setzero_si128(), (dif04)), 4); __m128i x0_l = _mm_add_epi32(t0e_l, t3e_l); __m128i x0_h = _mm_add_epi32(t0e_h, t3e_h); __m128i x3_l = _mm_sub_epi32(t0e_l, t3e_l); __m128i x3_h = _mm_sub_epi32(t0e_h, t3e_h); __m128i x1_l = _mm_add_epi32(t1e_l, t2e_l); __m128i x1_h = _mm_add_epi32(t1e_h, t2e_h); __m128i x2_l = _mm_sub_epi32(t1e_l, t2e_l); __m128i x2_h = _mm_sub_epi32(t1e_h, t2e_h); __m128i rot2_0lo = _mm_unpacklo_epi16((row7),(row3)); __m128i rot2_0hi = _mm_unpackhi_epi16((row7),(row3)); __m128i y0o_l = _mm_madd_epi16(rot2_0lo, rot2_0); __m128i y0o_h = _mm_madd_epi16(rot2_0hi, rot2_0); __m128i y2o_l = _mm_madd_epi16(rot2_0lo, rot2_1); __m128i y2o_h = _mm_madd_epi16(rot2_0hi, rot2_1); __m128i rot3_0lo = _mm_unpacklo_epi16((row5),(row1)); __m128i rot3_0hi = _mm_unpackhi_epi16((row5),(row1)); __m128i y1o_l = _mm_madd_epi16(rot3_0lo, rot3_0); __m128i y1o_h = _mm_madd_epi16(rot3_0hi, rot3_0); __m128i y3o_l = _mm_madd_epi16(rot3_0lo, rot3_1); __m128i y3o_h = _mm_madd_epi16(rot3_0hi, rot3_1); __m128i sum17 = _mm_add_epi16(row1, row7); __m128i sum35 = _mm_add_epi16(row3, row5); __m128i rot1_0lo = _mm_unpacklo_epi16((sum17),(sum35)); __m128i rot1_0hi = _mm_unpackhi_epi16((sum17),(sum35)); __m128i y4o_l = _mm_madd_epi16(rot1_0lo, rot1_0); __m128i y4o_h = _mm_madd_epi16(rot1_0hi, rot1_0); __m128i y5o_l = _mm_madd_epi16(rot1_0lo, rot1_1); __m128i y5o_h = _mm_madd_epi16(rot1_0hi, rot1_1); __m128i x4_l = _mm_add_epi32(y0o_l, y4o_l); __m128i x4_h = _mm_add_epi32(y0o_h, y4o_h); __m128i x5_l = _mm_add_epi32(y1o_l, y5o_l); __m128i x5_h = _mm_add_epi32(y1o_h, y5o_h); __m128i x6_l = _mm_add_epi32(y2o_l, y5o_l); __m128i x6_h = _mm_add_epi32(y2o_h, y5o_h); __m128i x7_l = _mm_add_epi32(y3o_l, y4o_l); __m128i x7_h = _mm_add_epi32(y3o_h, y4o_h); { __m128i abiased_l = _mm_add_epi32(x0_l, bias_1); __m128i abiased_h = _mm_add_epi32(x0_h, bias_1); __m128i sum_l = _mm_add_epi32(abiased_l, x7_l); __m128i sum_h = _mm_add_epi32(abiased_h, x7_h); __m128i dif_l = _mm_sub_epi32(abiased_l, x7_l); __m128i dif_h = _mm_sub_epi32(abiased_h, x7_h); row0 = _mm_packs_epi32(_mm_srai_epi32(sum_l, 17), _mm_srai_epi32(sum_h, 17)); row7 = _mm_packs_epi32(_mm_srai_epi32(dif_l, 17), _mm_srai_epi32(dif_h, 17)); }; { __m128i abiased_l = _mm_add_epi32(x1_l, bias_1); __m128i abiased_h = _mm_add_epi32(x1_h, bias_1); __m128i sum_l = _mm_add_epi32(abiased_l, x6_l); __m128i sum_h = _mm_add_epi32(abiased_h, x6_h); __m128i dif_l = _mm_sub_epi32(abiased_l, x6_l); __m128i dif_h = _mm_sub_epi32(abiased_h, x6_h); row1 = _mm_packs_epi32(_mm_srai_epi32(sum_l, 17), _mm_srai_epi32(sum_h, 17)); row6 = _mm_packs_epi32(_mm_srai_epi32(dif_l, 17), _mm_srai_epi32(dif_h, 17)); }; { __m128i abiased_l = _mm_add_epi32(x2_l, bias_1); __m128i abiased_h = _mm_add_epi32(x2_h, bias_1); __m128i sum_l = _mm_add_epi32(abiased_l, x5_l); __m128i sum_h = _mm_add_epi32(abiased_h, x5_h); __m128i dif_l = _mm_sub_epi32(abiased_l, x5_l); __m128i dif_h = _mm_sub_epi32(abiased_h, x5_h); row2 = _mm_packs_epi32(_mm_srai_epi32(sum_l, 17), _mm_srai_epi32(sum_h, 17)); row5 = _mm_packs_epi32(_mm_srai_epi32(dif_l, 17), _mm_srai_epi32(dif_h, 17)); }; { __m128i abiased_l = _mm_add_epi32(x3_l, bias_1); __m128i abiased_h = _mm_add_epi32(x3_h, bias_1); __m128i sum_l = _mm_add_epi32(abiased_l, x4_l); __m128i sum_h = _mm_add_epi32(abiased_h, x4_h); __m128i dif_l = _mm_sub_epi32(abiased_l, x4_l); __m128i dif_h = _mm_sub_epi32(abiased_h, x4_h); row3 = _mm_packs_epi32(_mm_srai_epi32(sum_l, 17), _mm_srai_epi32(sum_h, 17)); row4 = _mm_packs_epi32(_mm_srai_epi32(dif_l, 17), _mm_srai_epi32(dif_h, 17)); }; };

   {

      __m128i p0 = _mm_packus_epi16(row0, row1);
      __m128i p1 = _mm_packus_epi16(row2, row3);
      __m128i p2 = _mm_packus_epi16(row4, row5);
      __m128i p3 = _mm_packus_epi16(row6, row7);


      tmp = p0; p0 = _mm_unpacklo_epi8(p0, p2); p2 = _mm_unpackhi_epi8(tmp, p2);
      tmp = p1; p1 = _mm_unpacklo_epi8(p1, p3); p3 = _mm_unpackhi_epi8(tmp, p3);


      tmp = p0; p0 = _mm_unpacklo_epi8(p0, p1); p1 = _mm_unpackhi_epi8(tmp, p1);
      tmp = p2; p2 = _mm_unpacklo_epi8(p2, p3); p3 = _mm_unpackhi_epi8(tmp, p3);


      tmp = p0; p0 = _mm_unpacklo_epi8(p0, p2); p2 = _mm_unpackhi_epi8(tmp, p2);
      tmp = p1; p1 = _mm_unpacklo_epi8(p1, p3); p3 = _mm_unpackhi_epi8(tmp, p3);


      _mm_storel_epi64((__m128i *) out, p0); out += out_stride;
      _mm_storel_epi64((__m128i *) out, _mm_shuffle_epi32(p0, 0x4e)); out += out_stride;
      _mm_storel_epi64((__m128i *) out, p2); out += out_stride;
      _mm_storel_epi64((__m128i *) out, _mm_shuffle_epi32(p2, 0x4e)); out += out_stride;
      _mm_storel_epi64((__m128i *) out, p1); out += out_stride;
      _mm_storel_epi64((__m128i *) out, _mm_shuffle_epi32(p1, 0x4e)); out += out_stride;
      _mm_storel_epi64((__m128i *) out, p3); out += out_stride;
      _mm_storel_epi64((__m128i *) out, _mm_shuffle_epi32(p3, 0x4e));
   }
}
