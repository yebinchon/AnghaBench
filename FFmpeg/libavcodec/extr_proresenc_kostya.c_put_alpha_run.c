
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int put_bits (int *,int,int) ;

__attribute__((used)) static void put_alpha_run(PutBitContext *pb, int run)
{
    if (run) {
        put_bits(pb, 1, 0);
        if (run < 0x10)
            put_bits(pb, 4, run);
        else
            put_bits(pb, 15, run);
    } else {
        put_bits(pb, 1, 1);
    }
}
