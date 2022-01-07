
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_bands; int num_windows; int* band_type; int* band_run_end; int avctx; scalar_t__ is_long; } ;
typedef TYPE_1__ On2AVCContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 int get_bits (int *,int) ;

__attribute__((used)) static int on2avc_decode_band_types(On2AVCContext *c, GetBitContext *gb)
{
    int bits_per_sect = c->is_long ? 5 : 3;
    int esc_val = (1 << bits_per_sect) - 1;
    int num_bands = c->num_bands * c->num_windows;
    int band = 0, i, band_type, run_len, run;

    while (band < num_bands) {
        band_type = get_bits(gb, 4);
        run_len = 1;
        do {
            run = get_bits(gb, bits_per_sect);
            if (run > num_bands - band - run_len) {
                av_log(c->avctx, AV_LOG_ERROR, "Invalid band type run\n");
                return AVERROR_INVALIDDATA;
            }
            run_len += run;
        } while (run == esc_val);
        for (i = band; i < band + run_len; i++) {
            c->band_type[i] = band_type;
            c->band_run_end[i] = band + run_len;
        }
        band += run_len;
    }

    return 0;
}
