
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int PutBitContext ;


 size_t* ff_zigzag_direct ;
 int put_bits (int *,int,int) ;

void ff_write_quant_matrix(PutBitContext *pb, uint16_t *matrix)
{
    int i;

    if (matrix) {
        put_bits(pb, 1, 1);
        for (i = 0; i < 64; i++) {
            put_bits(pb, 8, matrix[ff_zigzag_direct[i]]);
        }
    } else
        put_bits(pb, 1, 0);
}
