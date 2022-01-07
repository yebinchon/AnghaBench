
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int RND0 ;
 int RND1 ;
 int RND2 ;
 int RND3 ;
 int RND4 ;
 int RND5 ;
 int RND6 ;
 int RND7 ;
 int TAB04 ;
 int TAB17 ;
 int TAB26 ;
 int TAB35 ;
 int idct_col_3 (int * const) ;
 int idct_col_4 (int * const) ;
 int idct_col_8 (int * const) ;
 scalar_t__ idct_row (int * const,int ,int ) ;

void ff_xvid_idct(int16_t *const in)
{
    int i, rows = 0x07;

    idct_row(in + 0 * 8, TAB04, RND0);
    idct_row(in + 1 * 8, TAB17, RND1);
    idct_row(in + 2 * 8, TAB26, RND2);
    if (idct_row(in + 3 * 8, TAB35, RND3))
        rows |= 0x08;
    if (idct_row(in + 4 * 8, TAB04, RND4))
        rows |= 0x10;
    if (idct_row(in + 5 * 8, TAB35, RND5))
        rows |= 0x20;
    if (idct_row(in + 6 * 8, TAB26, RND6))
        rows |= 0x40;
    if (idct_row(in + 7 * 8, TAB17, RND7))
        rows |= 0x80;

    if (rows & 0xF0) {
        for (i = 0; i < 8; i++)
            idct_col_8(in + i);
    } else if (rows & 0x08) {
        for (i = 0; i < 8; i++)
            idct_col_4(in + i);
    } else {
        for (i = 0; i < 8; i++)
            idct_col_3(in + i);
    }
}
