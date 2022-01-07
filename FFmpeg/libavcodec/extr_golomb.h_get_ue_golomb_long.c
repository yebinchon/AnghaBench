
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int av_log2 (unsigned int) ;
 int get_bits_long (int *,unsigned int) ;
 unsigned int show_bits_long (int *,int) ;
 int skip_bits_long (int *,unsigned int) ;

__attribute__((used)) static inline unsigned get_ue_golomb_long(GetBitContext *gb)
{
    unsigned buf, log;

    buf = show_bits_long(gb, 32);
    log = 31 - av_log2(buf);
    skip_bits_long(gb, log);

    return get_bits_long(gb, log + 1) - 1;
}
