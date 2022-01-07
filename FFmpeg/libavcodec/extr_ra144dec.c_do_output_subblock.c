
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int RA144Context ;
typedef int GetBitContext ;


 int ff_subblock_synthesis (int *,int const*,int,int,int,int,int) ;
 int get_bits (int *,int) ;

__attribute__((used)) static void do_output_subblock(RA144Context *ractx, const int16_t *lpc_coefs,
                               int gval, GetBitContext *gb)
{
    int cba_idx = get_bits(gb, 7);
    int gain = get_bits(gb, 8);
    int cb1_idx = get_bits(gb, 7);
    int cb2_idx = get_bits(gb, 7);

    ff_subblock_synthesis(ractx, lpc_coefs, cba_idx, cb1_idx, cb2_idx, gval,
                          gain);
}
