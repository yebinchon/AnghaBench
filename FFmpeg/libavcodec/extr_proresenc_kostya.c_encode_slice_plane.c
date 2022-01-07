
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;
struct TYPE_3__ {int scantable; } ;
typedef int PutBitContext ;
typedef TYPE_1__ ProresContext ;


 int encode_acs (int *,int *,int,int,int ,int const*) ;
 int encode_dcs (int *,int *,int,int const) ;
 int flush_put_bits (int *) ;
 int put_bits_count (int *) ;

__attribute__((used)) static int encode_slice_plane(ProresContext *ctx, PutBitContext *pb,
                              const uint16_t *src, ptrdiff_t linesize,
                              int mbs_per_slice, int16_t *blocks,
                              int blocks_per_mb, int plane_size_factor,
                              const int16_t *qmat)
{
    int blocks_per_slice, saved_pos;

    saved_pos = put_bits_count(pb);
    blocks_per_slice = mbs_per_slice * blocks_per_mb;

    encode_dcs(pb, blocks, blocks_per_slice, qmat[0]);
    encode_acs(pb, blocks, blocks_per_slice, plane_size_factor,
               ctx->scantable, qmat);
    flush_put_bits(pb);

    return (put_bits_count(pb) - saved_pos) >> 3;
}
