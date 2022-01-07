
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int PutBitContext ;


 int frexp (float,int*) ;
 scalar_t__ ldexp (int ,int) ;
 int put_bits32 (int *,unsigned int) ;

__attribute__((used)) static void put_float(PutBitContext *pb, float f)
{
    int exp, mant;
    uint32_t res = 0;
    mant = (int)ldexp(frexp(f, &exp), 20);
    exp += 788 - 20;
    if (mant < 0) {
        res |= (1U << 31);
        mant = -mant;
    }
    res |= mant | (exp << 21);
    put_bits32(pb, res);
}
