
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MUL64 (int const,int) ;

__attribute__((used)) static void parcor_to_lpc(unsigned int k, const int32_t *par, int32_t *cof)
{
    int i, j;

    for (i = 0, j = k - 1; i < j; i++, j--) {
        unsigned tmp1 = ((MUL64(par[k], cof[j]) + (1 << 19)) >> 20);
        cof[j] += ((MUL64(par[k], cof[i]) + (1 << 19)) >> 20);
        cof[i] += tmp1;
    }
    if (i == j)
        cof[i] += ((MUL64(par[k], cof[j]) + (1 << 19)) >> 20);

    cof[k] = par[k];
}
