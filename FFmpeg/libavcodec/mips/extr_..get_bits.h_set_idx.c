
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VLC_TYPE ;
typedef int GetBitContext ;


 int show_bits (int *,int) ;

__attribute__((used)) static inline int set_idx(GetBitContext *s, int code, int *n, int *nb_bits,
                          VLC_TYPE (*table)[2])
{
    unsigned idx;

    *nb_bits = -*n;
    idx = show_bits(s, *nb_bits) + code;
    *n = table[idx][1];

    return table[idx][0];
}
