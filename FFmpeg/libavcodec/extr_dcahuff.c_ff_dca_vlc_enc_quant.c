
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int PutBitContext ;


 int av_assert0 (int) ;
 int *** bitalloc_bits ;
 int *** bitalloc_codes ;
 size_t* bitalloc_offsets ;
 size_t* bitalloc_sizes ;
 int put_bits (int *,int ,int ) ;

void ff_dca_vlc_enc_quant(PutBitContext *pb, int *values, uint8_t n, uint8_t sel, uint8_t table)
{
    uint8_t i, id;
    for (i = 0; i < n; i++) {
        id = values[i] - bitalloc_offsets[table];
        av_assert0(id < bitalloc_sizes[table]);
        put_bits(pb, bitalloc_bits[table][sel][id], bitalloc_codes[table][sel][id]);
    }
}
