
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_9__ {TYPE_3__* s; int c; } ;
typedef TYPE_4__ VP9TileData ;
struct TYPE_6__ {int bpp; } ;
struct TYPE_7__ {TYPE_1__ h; } ;
struct TYPE_8__ {TYPE_2__ s; } ;


 int decode_coeffs_b_generic (int ,int *,int,int,int ,int ,unsigned int***,unsigned int***,int ***,int,int const*,int const**,int const*,int *) ;

__attribute__((used)) static int decode_coeffs_b32_16bpp(VP9TileData *td, int16_t *coef, int n_coeffs,
                                   unsigned (*cnt)[6][3], unsigned (*eob)[6][2],
                                   uint8_t (*p)[6][11], int nnz, const int16_t *scan,
                                   const int16_t (*nb)[2], const int16_t *band_counts,
                                   int16_t *qmul)
{
    return decode_coeffs_b_generic(td->c, coef, n_coeffs, 1, 0, td->s->s.h.bpp, cnt, eob, p,
                                   nnz, scan, nb, band_counts, qmul);
}
