
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_3__ {int c; } ;
typedef TYPE_1__ VP9TileData ;


 int decode_coeffs_b_generic (int ,int *,int,int,int,int,unsigned int***,unsigned int***,int ***,int,int const*,int const**,int const*,int *) ;

__attribute__((used)) static int decode_coeffs_b32_8bpp(VP9TileData *td, int16_t *coef, int n_coeffs,
                                  unsigned (*cnt)[6][3], unsigned (*eob)[6][2],
                                  uint8_t (*p)[6][11], int nnz, const int16_t *scan,
                                  const int16_t (*nb)[2], const int16_t *band_counts,
                                  int16_t *qmul)
{
    return decode_coeffs_b_generic(td->c, coef, n_coeffs, 1, 1, 8, cnt, eob, p,
                                   nnz, scan, nb, band_counts, qmul);
}
