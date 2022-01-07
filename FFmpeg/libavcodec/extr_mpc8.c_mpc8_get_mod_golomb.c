
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int** mpc8_cnk_len ;
 int mpc8_dec_base (int *,int,int) ;

__attribute__((used)) static inline int mpc8_get_mod_golomb(GetBitContext *gb, int m)
{
    if(mpc8_cnk_len[0][m] < 1) return 0;
    return mpc8_dec_base(gb, 1, m+1);
}
