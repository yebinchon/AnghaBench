
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* uni_DCtab_chrom_len ;
 int* uni_DCtab_lum_len ;

__attribute__((used)) static inline int mpeg4_get_dc_length(int level, int n)
{
    if (n < 4)
        return uni_DCtab_lum_len[level + 256];
    else
        return uni_DCtab_chrom_len[level + 256];
}
