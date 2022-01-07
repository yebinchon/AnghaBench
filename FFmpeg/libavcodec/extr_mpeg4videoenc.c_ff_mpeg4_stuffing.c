
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int put_bits (int *,int,int) ;
 int put_bits_count (int *) ;

void ff_mpeg4_stuffing(PutBitContext *pbc)
{
    int length;
    put_bits(pbc, 1, 0);
    length = (-put_bits_count(pbc)) & 7;
    if (length)
        put_bits(pbc, length, (1 << length) - 1);
}
