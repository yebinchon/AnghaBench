
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int ch_mode; int channels; scalar_t__ frame_or_sample_num; int blocksize; int samplerate; int bps; scalar_t__ is_var_size; } ;
struct TYPE_10__ {int buffer; } ;
typedef TYPE_1__ GetBitContext ;
typedef TYPE_2__ FLACFrameInfo ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_CRC_8_ATM ;
 scalar_t__ AV_LOG_ERROR ;
 int FLAC_CHMODE_INDEPENDENT ;
 int FLAC_CHMODE_MID_SIDE ;
 int FLAC_MAX_CHANNELS ;
 scalar_t__ av_crc (int ,int ,int ,int) ;
 int av_crc_get_table (int ) ;
 int av_log (int *,scalar_t__,char*,...) ;
 int* ff_flac_blocksize_table ;
 int* ff_flac_sample_rate_table ;
 int get_bits (TYPE_1__*,int) ;
 scalar_t__ get_bits1 (TYPE_1__*) ;
 int get_bits_count (TYPE_1__*) ;
 scalar_t__ get_utf8 (TYPE_1__*) ;
 int * sample_size_table ;
 int skip_bits (TYPE_1__*,int) ;

int ff_flac_decode_frame_header(AVCodecContext *avctx, GetBitContext *gb,
                                FLACFrameInfo *fi, int log_level_offset)
{
    int bs_code, sr_code, bps_code;


    if ((get_bits(gb, 15) & 0x7FFF) != 0x7FFC) {
        av_log(avctx, AV_LOG_ERROR + log_level_offset, "invalid sync code\n");
        return AVERROR_INVALIDDATA;
    }


    fi->is_var_size = get_bits1(gb);


    bs_code = get_bits(gb, 4);
    sr_code = get_bits(gb, 4);


    fi->ch_mode = get_bits(gb, 4);
    if (fi->ch_mode < FLAC_MAX_CHANNELS) {
        fi->channels = fi->ch_mode + 1;
        fi->ch_mode = FLAC_CHMODE_INDEPENDENT;
    } else if (fi->ch_mode < FLAC_MAX_CHANNELS + FLAC_CHMODE_MID_SIDE) {
        fi->channels = 2;
        fi->ch_mode -= FLAC_MAX_CHANNELS - 1;
    } else {
        av_log(avctx, AV_LOG_ERROR + log_level_offset,
               "invalid channel mode: %d\n", fi->ch_mode);
        return AVERROR_INVALIDDATA;
    }


    bps_code = get_bits(gb, 3);
    if (bps_code == 3 || bps_code == 7) {
        av_log(avctx, AV_LOG_ERROR + log_level_offset,
               "invalid sample size code (%d)\n",
               bps_code);
        return AVERROR_INVALIDDATA;
    }
    fi->bps = sample_size_table[bps_code];


    if (get_bits1(gb)) {
        av_log(avctx, AV_LOG_ERROR + log_level_offset,
               "broken stream, invalid padding\n");
        return AVERROR_INVALIDDATA;
    }


    fi->frame_or_sample_num = get_utf8(gb);
    if (fi->frame_or_sample_num < 0) {
        av_log(avctx, AV_LOG_ERROR + log_level_offset,
               "sample/frame number invalid; utf8 fscked\n");
        return AVERROR_INVALIDDATA;
    }


    if (bs_code == 0) {
        av_log(avctx, AV_LOG_ERROR + log_level_offset,
               "reserved blocksize code: 0\n");
        return AVERROR_INVALIDDATA;
    } else if (bs_code == 6) {
        fi->blocksize = get_bits(gb, 8) + 1;
    } else if (bs_code == 7) {
        fi->blocksize = get_bits(gb, 16) + 1;
    } else {
        fi->blocksize = ff_flac_blocksize_table[bs_code];
    }


    if (sr_code < 12) {
        fi->samplerate = ff_flac_sample_rate_table[sr_code];
    } else if (sr_code == 12) {
        fi->samplerate = get_bits(gb, 8) * 1000;
    } else if (sr_code == 13) {
        fi->samplerate = get_bits(gb, 16);
    } else if (sr_code == 14) {
        fi->samplerate = get_bits(gb, 16) * 10;
    } else {
        av_log(avctx, AV_LOG_ERROR + log_level_offset,
               "illegal sample rate code %d\n",
               sr_code);
        return AVERROR_INVALIDDATA;
    }


    skip_bits(gb, 8);
    if (av_crc(av_crc_get_table(AV_CRC_8_ATM), 0, gb->buffer,
               get_bits_count(gb)/8)) {
        av_log(avctx, AV_LOG_ERROR + log_level_offset,
               "header crc mismatch\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
