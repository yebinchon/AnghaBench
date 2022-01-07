
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int asset_offset; int asset_size; } ;
struct TYPE_6__ {int exss_index; int exss_size_nbits; int exss_size; int static_fields_present; int npresents; int nassets; int mix_metadata_enabled; int nmixoutconfigs; scalar_t__ avctx; int gb; TYPE_2__* assets; int * nmixoutchs; } ;
typedef TYPE_1__ DCAExssParser ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int av_log (scalar_t__,int ,char*) ;
 int av_popcount (int) ;
 int avpriv_request_sample (scalar_t__,char*,int) ;
 scalar_t__ ff_dca_check_crc (scalar_t__,int *,int,int) ;
 int ff_dca_count_chs_for_mask (int) ;
 scalar_t__ ff_dca_seek_bits (int *,int) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int init_get_bits8 (int *,int const*,int) ;
 int parse_descriptor (TYPE_1__*,TYPE_2__*) ;
 int set_exss_offsets (TYPE_2__*) ;
 int skip_bits (int *,int) ;
 int skip_bits_long (int *,int) ;

int ff_dca_exss_parse(DCAExssParser *s, const uint8_t *data, int size)
{
    int i, ret, offset, wide_hdr, header_size;

    if ((ret = init_get_bits8(&s->gb, data, size)) < 0)
        return ret;


    skip_bits_long(&s->gb, 32);


    skip_bits(&s->gb, 8);


    s->exss_index = get_bits(&s->gb, 2);


    wide_hdr = get_bits1(&s->gb);


    header_size = get_bits(&s->gb, 8 + 4 * wide_hdr) + 1;


    if (s->avctx && ff_dca_check_crc(s->avctx, &s->gb, 32 + 8, header_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid EXSS header checksum\n");
        return AVERROR_INVALIDDATA;
    }

    s->exss_size_nbits = 16 + 4 * wide_hdr;


    s->exss_size = get_bits(&s->gb, s->exss_size_nbits) + 1;
    if (s->exss_size > size) {
        if (s->avctx)
            av_log(s->avctx, AV_LOG_ERROR, "Packet too short for EXSS frame\n");
        return AVERROR_INVALIDDATA;
    }


    if (s->static_fields_present = get_bits1(&s->gb)) {
        int active_exss_mask[8];


        skip_bits(&s->gb, 2);


        skip_bits(&s->gb, 3);


        if (get_bits1(&s->gb))

            skip_bits_long(&s->gb, 36);


        s->npresents = get_bits(&s->gb, 3) + 1;
        if (s->npresents > 1) {
            if (s->avctx)
                avpriv_request_sample(s->avctx, "%d audio presentations", s->npresents);
            return AVERROR_PATCHWELCOME;
        }


        s->nassets = get_bits(&s->gb, 3) + 1;
        if (s->nassets > 1) {
            if (s->avctx)
                avpriv_request_sample(s->avctx, "%d audio assets", s->nassets);
            return AVERROR_PATCHWELCOME;
        }


        for (i = 0; i < s->npresents; i++)
            active_exss_mask[i] = get_bits(&s->gb, s->exss_index + 1);


        for (i = 0; i < s->npresents; i++)
            skip_bits_long(&s->gb, av_popcount(active_exss_mask[i]) * 8);


        if (s->mix_metadata_enabled = get_bits1(&s->gb)) {
            int spkr_mask_nbits;


            skip_bits(&s->gb, 2);


            spkr_mask_nbits = (get_bits(&s->gb, 2) + 1) << 2;


            s->nmixoutconfigs = get_bits(&s->gb, 2) + 1;


            for (i = 0; i < s->nmixoutconfigs; i++)
                s->nmixoutchs[i] = ff_dca_count_chs_for_mask(get_bits(&s->gb, spkr_mask_nbits));
        }
    } else {
        s->npresents = 1;
        s->nassets = 1;
    }


    offset = header_size;
    for (i = 0; i < s->nassets; i++) {
        s->assets[i].asset_offset = offset;
        s->assets[i].asset_size = get_bits(&s->gb, s->exss_size_nbits) + 1;
        offset += s->assets[i].asset_size;
        if (offset > s->exss_size) {
            if (s->avctx)
                av_log(s->avctx, AV_LOG_ERROR, "EXSS asset out of bounds\n");
            return AVERROR_INVALIDDATA;
        }
    }


    for (i = 0; i < s->nassets; i++) {
        if ((ret = parse_descriptor(s, &s->assets[i])) < 0)
            return ret;
        if ((ret = set_exss_offsets(&s->assets[i])) < 0) {
            if (s->avctx)
                av_log(s->avctx, AV_LOG_ERROR, "Invalid extension size in EXSS asset descriptor\n");
            return ret;
        }
    }







    if (ff_dca_seek_bits(&s->gb, header_size * 8)) {
        if (s->avctx)
            av_log(s->avctx, AV_LOG_ERROR, "Read past end of EXSS header\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
