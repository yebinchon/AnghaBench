
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFMIN3 (int,int,int) ;
 int* ff_celt_qn_exp2 ;

__attribute__((used)) static inline int celt_compute_qn(int N, int b, int offset, int pulse_cap,
                                  int stereo)
{
    int qn, qb;
    int N2 = 2 * N - 1;
    if (stereo && N == 2)
        N2--;




    qb = FFMIN3(b - pulse_cap - (4 << 3), (b + N2 * offset) / N2, 8 << 3);
    qn = (qb < (1 << 3 >> 1)) ? 1 : ((ff_celt_qn_exp2[qb & 0x7] >> (14 - (qb >> 3))) + 1) >> 1 << 1;
    return qn;
}
