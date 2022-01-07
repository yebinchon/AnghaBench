
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct TYPE_3__ {size_t* revtab; size_t* revtab32; int nbits; void** tmp_buf; } ;
typedef TYPE_1__ FFTContext ;
typedef void* FFTComplex ;


 int memcpy (void**,void**,int) ;

__attribute__((used)) static void fft_permute_c(FFTContext *s, FFTComplex *z)
{
    int j, np;
    const uint16_t *revtab = s->revtab;
    const uint32_t *revtab32 = s->revtab32;
    np = 1 << s->nbits;

    if (revtab) {
        for(j=0;j<np;j++) s->tmp_buf[revtab[j]] = z[j];
    } else
        for(j=0;j<np;j++) s->tmp_buf[revtab32[j]] = z[j];

    memcpy(z, s->tmp_buf, np * sizeof(FFTComplex));
}
