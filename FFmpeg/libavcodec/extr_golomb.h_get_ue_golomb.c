
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int CLOSE_READER (int ,int *) ;
 unsigned int GET_CACHE (int ,int *) ;
 int LAST_SKIP_BITS (int ,int *,int) ;
 int OPEN_READER (int ,int *) ;
 int UPDATE_CACHE (int ,int *) ;
 int av_log (int *,int ,char*) ;
 int av_log2 (unsigned int) ;
 int* ff_golomb_vlc_len ;
 int* ff_ue_golomb_vlc_code ;
 int re ;
 unsigned int show_bits_long (int *,int) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static inline int get_ue_golomb(GetBitContext *gb)
{
    unsigned int buf;
    OPEN_READER(re, gb);
    UPDATE_CACHE(re, gb);
    buf = GET_CACHE(re, gb);

    if (buf >= (1 << 27)) {
        buf >>= 32 - 9;
        LAST_SKIP_BITS(re, gb, ff_golomb_vlc_len[buf]);
        CLOSE_READER(re, gb);

        return ff_ue_golomb_vlc_code[buf];
    } else {
        int log = 2 * av_log2(buf) - 31;
        LAST_SKIP_BITS(re, gb, 32 - log);
        CLOSE_READER(re, gb);
        if (log < 7) {
            av_log(((void*)0), AV_LOG_ERROR, "Invalid UE golomb code\n");
            return AVERROR_INVALIDDATA;
        }
        buf >>= log;
        buf--;

        return buf;
    }

}
