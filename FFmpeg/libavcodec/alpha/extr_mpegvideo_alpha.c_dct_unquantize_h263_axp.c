
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int16_t ;


 int WORD_VEC (int) ;
 int cmpbge (int,int) ;
 int ldq (int *) ;
 int maxsw4 (int,int) ;
 int minsw4 (int,int ) ;
 int stq (int,int *) ;
 int zap (int,int) ;

__attribute__((used)) static void dct_unquantize_h263_axp(int16_t *block, int n_coeffs,
                                    uint64_t qscale, uint64_t qadd)
{
    uint64_t qmul = qscale << 1;
    uint64_t correction = WORD_VEC(qmul * 255 >> 8);
    int i;

    qadd = WORD_VEC(qadd);

    for(i = 0; i <= n_coeffs; block += 4, i += 4) {
        uint64_t levels, negmask, zeros, add, sub;

        levels = ldq(block);
        if (levels == 0)
            continue;







        negmask = cmpbge(WORD_VEC(0x7fff), levels);
        negmask &= (negmask >> 1) | (1 << 7);
        negmask = zap(-1, negmask);


        zeros = cmpbge(0, levels);
        zeros &= zeros >> 1;



        levels *= qmul;
        levels -= correction & (negmask << 16);

        add = qadd & ~negmask;
        sub = qadd & negmask;

        add = zap(add, zeros);
        levels += add;
        levels -= sub;

        stq(levels, block);
    }
}
