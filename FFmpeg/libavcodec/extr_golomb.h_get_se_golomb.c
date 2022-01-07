
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int CLOSE_READER (int ,int *) ;
 unsigned int GET_CACHE (int ,int *) ;
 int LAST_SKIP_BITS (int ,int *,int) ;
 int OPEN_READER (int ,int *) ;
 int UPDATE_CACHE (int ,int *) ;
 int av_log2 (unsigned int) ;
 int* ff_golomb_vlc_len ;
 int* ff_se_golomb_vlc_code ;
 int re ;
 unsigned int show_bits_long (int *,int) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static inline int get_se_golomb(GetBitContext *gb)
{
    unsigned int buf;
    OPEN_READER(re, gb);
    UPDATE_CACHE(re, gb);
    buf = GET_CACHE(re, gb);

    if (buf >= (1 << 27)) {
        buf >>= 32 - 9;
        LAST_SKIP_BITS(re, gb, ff_golomb_vlc_len[buf]);
        CLOSE_READER(re, gb);

        return ff_se_golomb_vlc_code[buf];
    } else {
        int log = av_log2(buf), sign;
        LAST_SKIP_BITS(re, gb, 31 - log);
        UPDATE_CACHE(re, gb);
        buf = GET_CACHE(re, gb);

        buf >>= log;

        LAST_SKIP_BITS(re, gb, 32 - log);
        CLOSE_READER(re, gb);

        sign = -(buf & 1);
        buf = ((buf >> 1) ^ sign) - sign;

        return buf;
    }

}
