
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RowContext ;
typedef int DNXHDContext ;


 int dnxhd_decode_dct_block (int const*,int *,int,int,int,int,int ) ;

__attribute__((used)) static int dnxhd_decode_dct_block_10(const DNXHDContext *ctx,
                                     RowContext *row, int n)
{
    return dnxhd_decode_dct_block(ctx, row, n, 6, 8, 4, 0);
}
