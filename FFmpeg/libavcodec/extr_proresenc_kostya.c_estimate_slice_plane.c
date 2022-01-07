
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;
struct TYPE_6__ {int scantable; } ;
struct TYPE_5__ {int * blocks; } ;
typedef TYPE_1__ ProresThreadData ;
typedef TYPE_2__ ProresContext ;


 int FFALIGN (int,int) ;
 scalar_t__ estimate_acs (int*,int ,int,int,int ,int const*) ;
 int estimate_dcs (int*,int ,int,int const) ;

__attribute__((used)) static int estimate_slice_plane(ProresContext *ctx, int *error, int plane,
                                const uint16_t *src, ptrdiff_t linesize,
                                int mbs_per_slice,
                                int blocks_per_mb, int plane_size_factor,
                                const int16_t *qmat, ProresThreadData *td)
{
    int blocks_per_slice;
    int bits;

    blocks_per_slice = mbs_per_slice * blocks_per_mb;

    bits = estimate_dcs(error, td->blocks[plane], blocks_per_slice, qmat[0]);
    bits += estimate_acs(error, td->blocks[plane], blocks_per_slice,
                         plane_size_factor, ctx->scantable, qmat);

    return FFALIGN(bits, 8);
}
