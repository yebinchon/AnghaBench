
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 unsigned int FFSIGN (int) ;
 int dirac_get_se_golomb (int *) ;

__attribute__((used)) static inline int coeff_unpack_golomb(GetBitContext *gb, int qfactor, int qoffset)
{
    int coeff = dirac_get_se_golomb(gb);
    const unsigned sign = FFSIGN(coeff);
    if (coeff)
        coeff = sign*((sign * coeff * qfactor + qoffset) >> 2);
    return coeff;
}
