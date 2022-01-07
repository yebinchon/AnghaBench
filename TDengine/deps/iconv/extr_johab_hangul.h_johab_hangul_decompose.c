
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 unsigned char FILL ;
 unsigned char NONE ;
 int RET_ILUNI ;
 int abort () ;
 unsigned char* jamo_final ;
 unsigned char* jamo_initial ;
 unsigned char* jamo_medial ;
 int johab_hangul_wctomb (int ,unsigned char*,int ,int) ;

__attribute__((used)) static int johab_hangul_decompose (conv_t conv, ucs4_t* r, ucs4_t wc)
{
  unsigned char buf[2];
  int ret = johab_hangul_wctomb(conv,buf,wc,2);
  if (ret != RET_ILUNI) {
    unsigned int hangul = (buf[0] << 8) | buf[1];
    unsigned char jamo1 = jamo_initial[(hangul >> 10) & 31];
    unsigned char jamo2 = jamo_medial[(hangul >> 5) & 31];
    unsigned char jamo3 = jamo_final[hangul & 31];
    if ((hangul >> 15) != 1) abort();
    if (jamo1 != NONE && jamo2 != NONE && jamo3 != NONE) {


      ucs4_t* p = r;
      if (jamo1 != FILL)
        *p++ = 0x3130 + jamo1;
      if (jamo2 != FILL)
        *p++ = 0x3130 + jamo2;
      if (jamo3 != FILL)
        *p++ = 0x3130 + jamo3;
      return p-r;
    }
  }
  return RET_ILUNI;
}
