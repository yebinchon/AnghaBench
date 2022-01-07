
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input ;
typedef int dword ;
typedef int byte ;


 size_t ACOMP ;
 int ALPHA_TS ;
 int COPY_4UBV (int*,int*) ;
 int ISTBLACK (int*) ;
 int MAX_COMP ;
 int N_TEXELS ;
 int fxt1_quantize_ALPHA0 (int*,int**,int**,int) ;
 int fxt1_quantize_ALPHA1 (int*,int**) ;
 int fxt1_quantize_CHROMA (int*,int**) ;
 int fxt1_quantize_HI (int*,int**,int**,int) ;
 int fxt1_quantize_MIXED0 (int*,int**) ;
 int fxt1_quantize_MIXED1 (int*,int**) ;
 int memset (int**,int,int) ;

__attribute__((used)) static void
fxt1_quantize (dword *cc, const byte *lines[], int comps)
{
    int trualpha;
    byte reord[N_TEXELS][MAX_COMP];

    byte input[N_TEXELS][MAX_COMP];

    int i;

    int k, l;

    if (comps == 3) {

 memset(input, -1, sizeof(input));
    }



    for (l = 0; l < 4; l++) {
 for (k = 0; k < 4; k++) {
     for (i = 0; i < comps; i++) {
  input[k + l * 4][i] = *lines[l]++;
     }
 }
 for (; k < 8; k++) {
     for (i = 0; i < comps; i++) {
  input[k + l * 4 + 12][i] = *lines[l]++;
     }
 }
    }
    l = N_TEXELS;
    trualpha = 0;
    if (comps == 4) {

 l = 0;
 for (k = 0; k < N_TEXELS; k++) {

     if (!ISTBLACK(input[k])) {

  COPY_4UBV(reord[l], input[k]);
  if (reord[l][ACOMP] < (255 - ALPHA_TS)) {

      trualpha = !0;
  }
  l++;
     }
 }
    }
    if (trualpha) {
 fxt1_quantize_ALPHA1(cc, input);
    } else if (l == 0) {
 cc[0] = cc[1] = cc[2] = 0xFFFFFFFF;
 cc[3] = 0;
    } else if (l < N_TEXELS) {
 fxt1_quantize_MIXED1(cc, input);
    } else {
 fxt1_quantize_MIXED0(cc, input);
    }
    (void)fxt1_quantize_ALPHA0;
    (void)fxt1_quantize_HI;
    (void)fxt1_quantize_CHROMA;

}
