
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int put_bits (int *,int,int) ;
 int put_sbits (int *,int,int) ;

void ff_flv2_encode_ac_esc(PutBitContext *pb, int slevel, int level,
                           int run, int last)
{
    if (level < 64) {
        put_bits(pb, 1, 0);
        put_bits(pb, 1, last);
        put_bits(pb, 6, run);

        put_sbits(pb, 7, slevel);
    } else {

        put_bits(pb, 1, 1);
        put_bits(pb, 1, last);
        put_bits(pb, 6, run);

        put_sbits(pb, 11, slevel);
    }
}
