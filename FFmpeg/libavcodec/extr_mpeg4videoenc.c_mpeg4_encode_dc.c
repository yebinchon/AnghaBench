
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int put_bits (int *,int ,int ) ;
 int * uni_DCtab_chrom_bits ;
 int * uni_DCtab_chrom_len ;
 int * uni_DCtab_lum_bits ;
 int * uni_DCtab_lum_len ;

__attribute__((used)) static inline void mpeg4_encode_dc(PutBitContext *s, int level, int n)
{

    level += 256;
    if (n < 4) {

        put_bits(s, uni_DCtab_lum_len[level], uni_DCtab_lum_bits[level]);
    } else {

        put_bits(s, uni_DCtab_chrom_len[level], uni_DCtab_chrom_bits[level]);
    }
}
