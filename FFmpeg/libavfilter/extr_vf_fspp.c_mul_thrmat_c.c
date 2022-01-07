
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void mul_thrmat_c(int16_t *thr_adr_noq, int16_t *thr_adr, int q)
{
    int a;
    for (a = 0; a < 64; a++)
        thr_adr[a] = q * thr_adr_noq[a];
}
