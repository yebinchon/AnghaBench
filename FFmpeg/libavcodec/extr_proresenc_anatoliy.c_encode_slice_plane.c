
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_7__ {int buf; } ;
typedef TYPE_1__ PutBitContext ;


 int encode_ac_coeffs (TYPE_1__*,int *,int,int*,int const*) ;
 int encode_dc_coeffs (TYPE_1__*,int *,int,int*) ;
 int flush_put_bits (TYPE_1__*) ;
 int init_put_bits (TYPE_1__*,int *,unsigned int) ;
 int put_bits_ptr (TYPE_1__*) ;

__attribute__((used)) static int encode_slice_plane(int16_t *blocks, int mb_count, uint8_t *buf, unsigned buf_size, int *qmat, int sub_sample_chroma,
                              const uint8_t ff_prores_scan[64])
{
    int blocks_per_slice;
    PutBitContext pb;

    blocks_per_slice = mb_count << (2 - sub_sample_chroma);
    init_put_bits(&pb, buf, buf_size);

    encode_dc_coeffs(&pb, blocks, blocks_per_slice, qmat);
    encode_ac_coeffs(&pb, blocks, blocks_per_slice, qmat, ff_prores_scan);

    flush_put_bits(&pb);
    return put_bits_ptr(&pb) - pb.buf;
}
