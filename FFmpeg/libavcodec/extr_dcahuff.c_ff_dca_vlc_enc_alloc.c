
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int PutBitContext ;


 int ** bitalloc_12_bits ;
 int ** bitalloc_12_codes ;
 int put_bits (int *,int ,int ) ;

void ff_dca_vlc_enc_alloc(PutBitContext *pb, int *values, uint8_t n, uint8_t sel)
{
    uint8_t i, id;
    for (i = 0; i < n; i++) {
        id = values[i] - 1;
        put_bits(pb, bitalloc_12_bits[sel][id], bitalloc_12_codes[sel][id]);
    }
}
