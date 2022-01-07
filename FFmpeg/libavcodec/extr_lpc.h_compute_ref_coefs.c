
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPC_TYPE ;


 int MAX_LPC_ORDER ;

__attribute__((used)) static inline void compute_ref_coefs(const LPC_TYPE *autoc, int max_order,
                                     LPC_TYPE *ref, LPC_TYPE *error)
{
    int i, j;
    LPC_TYPE err;
    LPC_TYPE gen0[MAX_LPC_ORDER], gen1[MAX_LPC_ORDER];

    for (i = 0; i < max_order; i++)
        gen0[i] = gen1[i] = autoc[i + 1];

    err = autoc[0];
    ref[0] = -gen1[0] / err;
    err += gen1[0] * ref[0];
    if (error)
        error[0] = err;
    for (i = 1; i < max_order; i++) {
        for (j = 0; j < max_order - i; j++) {
            gen1[j] = gen1[j + 1] + ref[i - 1] * gen0[j];
            gen0[j] = gen1[j + 1] * ref[i - 1] + gen0[j];
        }
        ref[i] = -gen1[0] / err;
        err += gen1[0] * ref[i];
        if (error)
            error[i] = err;
    }
}
