
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int block ;
struct TYPE_4__ {int table; } ;
struct TYPE_3__ {int table; } ;
typedef int SHQContext ;
typedef int GetBitContext ;


 int ALPHA_VLC_BITS ;
 int AVERROR_INVALIDDATA ;
 int CLOSE_READER (int ,int *) ;
 int GET_VLC (int,int ,int *,int ,int ,int) ;
 int OPEN_READER (int ,int *) ;
 int UPDATE_CACHE_LE (int ,int *) ;
 TYPE_2__ ff_dc_alpha_level_vlc_le ;
 TYPE_1__ ff_dc_alpha_run_vlc_le ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int re ;

__attribute__((used)) static inline int decode_alpha_block(const SHQContext *s, GetBitContext *gb, uint8_t last_alpha[16], uint8_t *dest, int linesize)
{
    uint8_t block[128];
    int i = 0, x, y;

    memset(block, 0, sizeof(block));

    {
        OPEN_READER(re, gb);

        for ( ;; ) {
            int run, level;

            UPDATE_CACHE_LE(re, gb);
            GET_VLC(run, re, gb, ff_dc_alpha_run_vlc_le.table, ALPHA_VLC_BITS, 2);

            if (run < 0) break;
            i += run;
            if (i >= 128)
                return AVERROR_INVALIDDATA;

            UPDATE_CACHE_LE(re, gb);
            GET_VLC(level, re, gb, ff_dc_alpha_level_vlc_le.table, ALPHA_VLC_BITS, 2);
            block[i++] = level;
        }

        CLOSE_READER(re, gb);
    }

    for (y = 0; y < 8; y++) {
        for (x = 0; x < 16; x++) {
            last_alpha[x] -= block[y * 16 + x];
        }
        memcpy(dest, last_alpha, 16);
        dest += linesize;
    }

    return 0;
}
