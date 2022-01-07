
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int int32_t ;


 int filter0 (int *,int *,int const,int) ;
 int filter1 (int *,int *,int const,int) ;

__attribute__((used)) static void assemble_freq_bands_c(int32_t *dst, int32_t *src0, int32_t *src1,
                                  const int32_t *coeff, ptrdiff_t len)
{
    int i;

    filter0(src0, src1, coeff[0], len);
    filter0(src1, src0, coeff[1], len);
    filter0(src0, src1, coeff[2], len);
    filter0(src1, src0, coeff[3], len);

    for (i = 0; i < 8; i++, src0--) {
        filter1(src0, src1, coeff[i + 4], len);
        filter1(src1, src0, coeff[i + 12], len);
        filter1(src0, src1, coeff[i + 4], len);
    }

    for (i = 0; i < len; i++) {
        *dst++ = *src1++;
        *dst++ = *++src0;
    }
}
