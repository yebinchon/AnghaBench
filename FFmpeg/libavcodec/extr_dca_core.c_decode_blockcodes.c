
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int DCA_SUBBAND_SAMPLES ;
 int FASTDIV (int,int) ;

__attribute__((used)) static inline int decode_blockcodes(int code1, int code2, int levels, int32_t *audio)
{
    int offset = (levels - 1) / 2;
    int n, div;

    for (n = 0; n < DCA_SUBBAND_SAMPLES / 2; n++) {
        div = FASTDIV(code1, levels);
        audio[n] = code1 - div * levels - offset;
        code1 = div;
    }
    for (; n < DCA_SUBBAND_SAMPLES; n++) {
        div = FASTDIV(code2, levels);
        audio[n] = code2 - div * levels - offset;
        code2 = div;
    }

    return code1 | code2;
}
