
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_11__ {int nbits; int (* fft_calc ) (TYPE_4__*,int ) ;scalar_t__* revtab; } ;
struct TYPE_10__ {float const member_0; float const member_1; } ;
struct TYPE_9__ {int len4; int len2; int* pfa_prereindex; int pfa_postreindex; int * twiddle_exptab; scalar_t__ tmp; int (* postreindex ) (TYPE_2__*,scalar_t__,int *,int ,int) ;TYPE_4__ ptwo_fft; int exptab; int (* fft15 ) (scalar_t__,TYPE_2__*,int ,int) ;} ;
typedef TYPE_1__ MDCT15Context ;
typedef TYPE_2__ FFTComplex ;


 int CMUL3 (TYPE_2__,TYPE_2__,int ) ;
 int stub1 (scalar_t__,TYPE_2__*,int ,int) ;
 int stub2 (TYPE_4__*,int ) ;
 int stub3 (TYPE_2__*,scalar_t__,int *,int ,int) ;

__attribute__((used)) static void imdct15_half(MDCT15Context *s, float *dst, const float *src,
                         ptrdiff_t stride)
{
    FFTComplex fft15in[15];
    FFTComplex *z = (FFTComplex *)dst;
    int i, j, len8 = s->len4 >> 1, l_ptwo = 1 << s->ptwo_fft.nbits;
    const float *in1 = src, *in2 = src + (s->len2 - 1) * stride;


    for (i = 0; i < l_ptwo; i++) {
        for (j = 0; j < 15; j++) {
            const int k = s->pfa_prereindex[i*15 + j];
            FFTComplex tmp = { in2[-k*stride], in1[k*stride] };
            CMUL3(fft15in[j], tmp, s->twiddle_exptab[k >> 1]);
        }
        s->fft15(s->tmp + s->ptwo_fft.revtab[i], fft15in, s->exptab, l_ptwo);
    }


    for (i = 0; i < 15; i++)
        s->ptwo_fft.fft_calc(&s->ptwo_fft, s->tmp + l_ptwo*i);


    s->postreindex(z, s->tmp, s->twiddle_exptab, s->pfa_postreindex, len8);
}
