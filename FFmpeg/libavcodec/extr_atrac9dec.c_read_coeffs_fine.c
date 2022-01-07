
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int q_unit_cnt; int* precision_fine; int * q_coeffs_fine; } ;
typedef int GetBitContext ;
typedef int ATRAC9Context ;
typedef TYPE_1__ ATRAC9ChannelData ;
typedef int ATRAC9BlockData ;


 int* at9_q_unit_to_coeff_idx ;
 int get_bits (int *,int const) ;
 int memset (int *,int ,int) ;
 int sign_extend (int ,int const) ;

__attribute__((used)) static inline void read_coeffs_fine(ATRAC9Context *s, ATRAC9BlockData *b,
                                    ATRAC9ChannelData *c, GetBitContext *gb)
{
    memset(c->q_coeffs_fine, 0, sizeof(c->q_coeffs_fine));

    for (int i = 0; i < c->q_unit_cnt; i++) {
        const int start = at9_q_unit_to_coeff_idx[i + 0];
        const int end = at9_q_unit_to_coeff_idx[i + 1];
        const int len = c->precision_fine[i] + 1;

        if (c->precision_fine[i] <= 0)
            continue;

        for (int j = start; j < end; j++)
            c->q_coeffs_fine[j] = sign_extend(get_bits(gb, len), len);
    }
}
