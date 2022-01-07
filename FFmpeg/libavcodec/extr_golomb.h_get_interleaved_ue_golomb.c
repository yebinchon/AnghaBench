
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GetBitContext ;


 scalar_t__ BITS_AVAILABLE (int ,int *) ;
 int CLOSE_READER (int ,int *) ;
 int FFMIN (int,int) ;
 int GET_CACHE (int ,int *) ;
 int LAST_SKIP_BITS (int ,int *,int) ;
 int OPEN_READER (int ,int *) ;
 int UPDATE_CACHE (int ,int *) ;
 unsigned int* ff_interleaved_dirac_golomb_vlc_code ;
 int* ff_interleaved_golomb_vlc_len ;
 int* ff_interleaved_ue_golomb_vlc_code ;
 scalar_t__ get_bits_left (int *) ;
 int re ;
 int show_bits_long (int *,int) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static inline unsigned get_interleaved_ue_golomb(GetBitContext *gb)
{
    uint32_t buf;
    OPEN_READER(re, gb);
    UPDATE_CACHE(re, gb);
    buf = GET_CACHE(re, gb);

    if (buf & 0xAA800000) {
        buf >>= 32 - 8;
        LAST_SKIP_BITS(re, gb, ff_interleaved_golomb_vlc_len[buf]);
        CLOSE_READER(re, gb);

        return ff_interleaved_ue_golomb_vlc_code[buf];
    } else {
        unsigned ret = 1;

        do {
            buf >>= 32 - 8;
            LAST_SKIP_BITS(re, gb,
                           FFMIN(ff_interleaved_golomb_vlc_len[buf], 8));

            if (ff_interleaved_golomb_vlc_len[buf] != 9) {
                ret <<= (ff_interleaved_golomb_vlc_len[buf] - 1) >> 1;
                ret |= ff_interleaved_dirac_golomb_vlc_code[buf];
                break;
            }
            ret = (ret << 4) | ff_interleaved_dirac_golomb_vlc_code[buf];
            UPDATE_CACHE(re, gb);
            buf = GET_CACHE(re, gb);
        } while (ret<0x8000000U && BITS_AVAILABLE(re, gb));

        CLOSE_READER(re, gb);
        return ret - 1;
    }

}
