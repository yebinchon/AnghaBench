
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int FRAC_BITS ;
 int MULL (int,int const,int ) ;

__attribute__((used)) static void lsp2poly(int* f, const int16_t* lsp, int lp_half_order)
{
    int i, j;

    f[0] = 0x400000;
    f[1] = -lsp[0] * 256;

    for(i=2; i<=lp_half_order; i++)
    {
        f[i] = f[i-2];
        for(j=i; j>1; j--)
            f[j] -= MULL(f[j-1], lsp[2*i-2], FRAC_BITS) - f[j-2];

        f[1] -= lsp[2*i-2] * 256;
    }
}
